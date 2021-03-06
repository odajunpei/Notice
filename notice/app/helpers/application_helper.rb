module ApplicationHelper
  def sorttable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

  def date_select_ja(src_html)
    dst_html = src_html.gsub(/>\d{4}</) do |m|
      year = m.match(/>(\d{4})</)[1].to_i
      year_ja = case year
        when 0..1911
          "明治#{year - 1867}"
        when 1912
          "明治45/大正元年"
        when 1913..1925
          "大正#{year - 1911}"
        when 1926
          "大正15/昭和元年"
        when 1927..1988
          "昭和#{year - 1925}"
        when 1989
          "昭和64/平成元年"
        when 1990..2018
          "平成#{year - 1988}"
        when 2019
          "平成31年/令和元年"
        else
          "令和#{year-2018}"
      end
      ">#{year_ja} (#{year})<"
    end
    dst_html.html_safe
  end
end
