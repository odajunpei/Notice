{"filter":false,"title":"sessions_controller.rb","tooltip":"/notice/app/controllers/members/sessions_controller.rb","undoManager":{"mark":75,"position":75,"stack":[[{"start":{"row":3,"column":60},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":3,"column":60},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":55},"action":"insert","lines":[" before_action :reject_inactive_user, only: [:create]"],"id":5}],[{"start":{"row":27,"column":7},"end":{"row":28,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"insert","lines":["  "]},{"start":{"row":28,"column":2},"end":{"row":29,"column":0},"action":"insert","lines":["",""]},{"start":{"row":29,"column":0},"end":{"row":29,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":29,"column":2},"end":{"row":36,"column":5},"action":"insert","lines":["def reject_inactive_user","    @user = User.find_by(name: params[:user][:name])","    if @user","      if @user.valid_password?(params[:user][:password]) && !@user.is_valid","        redirect_to new_user_session_path","      end","    end","  end"],"id":7}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "],"id":8},{"start":{"row":28,"column":0},"end":{"row":28,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"remove","lines":["r"],"id":9},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"remove","lines":["e"]},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"remove","lines":["s"]},{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"remove","lines":["u"]}],[{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["m"],"id":10},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["e"]},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["m"]},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"insert","lines":["b"]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"insert","lines":["e"]},{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"remove","lines":["r"],"id":11},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"remove","lines":["e"]},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"remove","lines":["s"]},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"remove","lines":["U"]}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["M"],"id":12},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"insert","lines":["e"]},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"insert","lines":["m"]},{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"insert","lines":["b"]},{"start":{"row":30,"column":18},"end":{"row":30,"column":19},"action":"insert","lines":["e"]},{"start":{"row":30,"column":19},"end":{"row":30,"column":20},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":32},"end":{"row":30,"column":33},"action":"remove","lines":["e"],"id":13},{"start":{"row":30,"column":31},"end":{"row":30,"column":32},"action":"remove","lines":["m"]},{"start":{"row":30,"column":30},"end":{"row":30,"column":31},"action":"remove","lines":["a"]},{"start":{"row":30,"column":29},"end":{"row":30,"column":30},"action":"remove","lines":["n"]}],[{"start":{"row":30,"column":29},"end":{"row":30,"column":30},"action":"insert","lines":["e"],"id":14},{"start":{"row":30,"column":30},"end":{"row":30,"column":31},"action":"insert","lines":["m"]},{"start":{"row":30,"column":31},"end":{"row":30,"column":32},"action":"insert","lines":["a"]},{"start":{"row":30,"column":32},"end":{"row":30,"column":33},"action":"insert","lines":["i"]},{"start":{"row":30,"column":33},"end":{"row":30,"column":34},"action":"insert","lines":["l"]}],[{"start":{"row":30,"column":47},"end":{"row":30,"column":48},"action":"remove","lines":["r"],"id":15},{"start":{"row":30,"column":46},"end":{"row":30,"column":47},"action":"remove","lines":["e"]},{"start":{"row":30,"column":45},"end":{"row":30,"column":46},"action":"remove","lines":["s"]},{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"remove","lines":["u"]}],[{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"insert","lines":["m"],"id":16},{"start":{"row":30,"column":45},"end":{"row":30,"column":46},"action":"insert","lines":["e"]},{"start":{"row":30,"column":46},"end":{"row":30,"column":47},"action":"insert","lines":["m"]},{"start":{"row":30,"column":47},"end":{"row":30,"column":48},"action":"insert","lines":["b"]},{"start":{"row":30,"column":48},"end":{"row":30,"column":49},"action":"insert","lines":["e"]},{"start":{"row":30,"column":49},"end":{"row":30,"column":50},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":56},"end":{"row":30,"column":57},"action":"remove","lines":["e"],"id":17},{"start":{"row":30,"column":55},"end":{"row":30,"column":56},"action":"remove","lines":["m"]},{"start":{"row":30,"column":54},"end":{"row":30,"column":55},"action":"remove","lines":["a"]},{"start":{"row":30,"column":53},"end":{"row":30,"column":54},"action":"remove","lines":["n"]},{"start":{"row":30,"column":52},"end":{"row":30,"column":53},"action":"remove","lines":[":"]}],[{"start":{"row":30,"column":52},"end":{"row":30,"column":53},"action":"insert","lines":[":"],"id":18},{"start":{"row":30,"column":53},"end":{"row":30,"column":54},"action":"insert","lines":["e"]},{"start":{"row":30,"column":54},"end":{"row":30,"column":55},"action":"insert","lines":["m"]},{"start":{"row":30,"column":55},"end":{"row":30,"column":56},"action":"insert","lines":["a"]},{"start":{"row":30,"column":56},"end":{"row":30,"column":57},"action":"insert","lines":["i"]},{"start":{"row":30,"column":57},"end":{"row":30,"column":58},"action":"insert","lines":["l"]}],[{"start":{"row":31,"column":11},"end":{"row":31,"column":12},"action":"remove","lines":["r"],"id":19},{"start":{"row":31,"column":10},"end":{"row":31,"column":11},"action":"remove","lines":["e"]},{"start":{"row":31,"column":9},"end":{"row":31,"column":10},"action":"remove","lines":["s"]},{"start":{"row":31,"column":8},"end":{"row":31,"column":9},"action":"remove","lines":["u"]}],[{"start":{"row":31,"column":8},"end":{"row":31,"column":9},"action":"insert","lines":["m"],"id":20},{"start":{"row":31,"column":9},"end":{"row":31,"column":10},"action":"insert","lines":["e"]},{"start":{"row":31,"column":10},"end":{"row":31,"column":11},"action":"insert","lines":["m"]},{"start":{"row":31,"column":11},"end":{"row":31,"column":12},"action":"insert","lines":["b"]},{"start":{"row":31,"column":12},"end":{"row":31,"column":13},"action":"insert","lines":["e"]},{"start":{"row":31,"column":13},"end":{"row":31,"column":14},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":13},"end":{"row":32,"column":14},"action":"remove","lines":["r"],"id":21},{"start":{"row":32,"column":12},"end":{"row":32,"column":13},"action":"remove","lines":["e"]},{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"remove","lines":["s"]},{"start":{"row":32,"column":10},"end":{"row":32,"column":11},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":10},"end":{"row":32,"column":11},"action":"insert","lines":["m"],"id":22},{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"insert","lines":["e"]},{"start":{"row":32,"column":12},"end":{"row":32,"column":13},"action":"insert","lines":["m"]},{"start":{"row":32,"column":13},"end":{"row":32,"column":14},"action":"insert","lines":["b"]},{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"insert","lines":["e"]},{"start":{"row":32,"column":15},"end":{"row":32,"column":16},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":44},"end":{"row":32,"column":45},"action":"remove","lines":["r"],"id":23},{"start":{"row":32,"column":43},"end":{"row":32,"column":44},"action":"remove","lines":["e"]},{"start":{"row":32,"column":42},"end":{"row":32,"column":43},"action":"remove","lines":["s"]},{"start":{"row":32,"column":41},"end":{"row":32,"column":42},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":41},"end":{"row":32,"column":42},"action":"insert","lines":["m"],"id":24},{"start":{"row":32,"column":42},"end":{"row":32,"column":43},"action":"insert","lines":["e"]},{"start":{"row":32,"column":43},"end":{"row":32,"column":44},"action":"insert","lines":["m"]},{"start":{"row":32,"column":44},"end":{"row":32,"column":45},"action":"insert","lines":["b"]},{"start":{"row":32,"column":45},"end":{"row":32,"column":46},"action":"insert","lines":["e"]},{"start":{"row":32,"column":46},"end":{"row":32,"column":47},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":78},"end":{"row":32,"column":79},"action":"remove","lines":["d"],"id":25},{"start":{"row":32,"column":77},"end":{"row":32,"column":78},"action":"remove","lines":["i"]},{"start":{"row":32,"column":76},"end":{"row":32,"column":77},"action":"remove","lines":["l"]},{"start":{"row":32,"column":75},"end":{"row":32,"column":76},"action":"remove","lines":["a"]},{"start":{"row":32,"column":74},"end":{"row":32,"column":75},"action":"remove","lines":["v"]}],[{"start":{"row":32,"column":74},"end":{"row":32,"column":75},"action":"insert","lines":["d"],"id":26},{"start":{"row":32,"column":75},"end":{"row":32,"column":76},"action":"insert","lines":["e"]},{"start":{"row":32,"column":76},"end":{"row":32,"column":77},"action":"insert","lines":["l"]},{"start":{"row":32,"column":77},"end":{"row":32,"column":78},"action":"insert","lines":["e"]},{"start":{"row":32,"column":78},"end":{"row":32,"column":79},"action":"insert","lines":["t"]},{"start":{"row":32,"column":79},"end":{"row":32,"column":80},"action":"insert","lines":["e"]},{"start":{"row":32,"column":80},"end":{"row":32,"column":81},"action":"insert","lines":["d"]}],[{"start":{"row":32,"column":69},"end":{"row":32,"column":70},"action":"remove","lines":["r"],"id":27},{"start":{"row":32,"column":68},"end":{"row":32,"column":69},"action":"remove","lines":["e"]},{"start":{"row":32,"column":67},"end":{"row":32,"column":68},"action":"remove","lines":["s"]},{"start":{"row":32,"column":66},"end":{"row":32,"column":67},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":66},"end":{"row":32,"column":67},"action":"insert","lines":["m"],"id":28},{"start":{"row":32,"column":67},"end":{"row":32,"column":68},"action":"insert","lines":["e"]},{"start":{"row":32,"column":68},"end":{"row":32,"column":69},"action":"insert","lines":["m"]},{"start":{"row":32,"column":69},"end":{"row":32,"column":70},"action":"insert","lines":["b"]},{"start":{"row":32,"column":70},"end":{"row":32,"column":71},"action":"insert","lines":["e"]},{"start":{"row":32,"column":71},"end":{"row":32,"column":72},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":64},"end":{"row":32,"column":65},"action":"remove","lines":["!"],"id":29}],[{"start":{"row":33,"column":27},"end":{"row":33,"column":28},"action":"remove","lines":["r"],"id":30},{"start":{"row":33,"column":26},"end":{"row":33,"column":27},"action":"remove","lines":["e"]},{"start":{"row":33,"column":25},"end":{"row":33,"column":26},"action":"remove","lines":["s"]},{"start":{"row":33,"column":24},"end":{"row":33,"column":25},"action":"remove","lines":["u"]}],[{"start":{"row":33,"column":24},"end":{"row":33,"column":25},"action":"insert","lines":["m"],"id":31},{"start":{"row":33,"column":25},"end":{"row":33,"column":26},"action":"insert","lines":["e"]},{"start":{"row":33,"column":26},"end":{"row":33,"column":27},"action":"insert","lines":["m"]},{"start":{"row":33,"column":27},"end":{"row":33,"column":28},"action":"insert","lines":["b"]},{"start":{"row":33,"column":28},"end":{"row":33,"column":29},"action":"insert","lines":["e"]},{"start":{"row":33,"column":29},"end":{"row":33,"column":30},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":82},"end":{"row":32,"column":83},"action":"insert","lines":[" "],"id":32},{"start":{"row":32,"column":83},"end":{"row":32,"column":84},"action":"insert","lines":["="]},{"start":{"row":32,"column":84},"end":{"row":32,"column":85},"action":"insert","lines":["="]}],[{"start":{"row":32,"column":85},"end":{"row":32,"column":86},"action":"insert","lines":[" "],"id":33}],[{"start":{"row":32,"column":86},"end":{"row":32,"column":88},"action":"insert","lines":["\"\""],"id":34}],[{"start":{"row":32,"column":87},"end":{"row":32,"column":88},"action":"insert","lines":["t"],"id":35},{"start":{"row":32,"column":88},"end":{"row":32,"column":89},"action":"insert","lines":["r"]},{"start":{"row":32,"column":89},"end":{"row":32,"column":90},"action":"insert","lines":["u"]},{"start":{"row":32,"column":90},"end":{"row":32,"column":91},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":37},"end":{"row":4,"column":38},"action":"remove","lines":["r"],"id":36},{"start":{"row":4,"column":36},"end":{"row":4,"column":37},"action":"remove","lines":["e"]},{"start":{"row":4,"column":35},"end":{"row":4,"column":36},"action":"remove","lines":["s"]},{"start":{"row":4,"column":34},"end":{"row":4,"column":35},"action":"remove","lines":["u"]}],[{"start":{"row":4,"column":34},"end":{"row":4,"column":35},"action":"insert","lines":["m"],"id":37},{"start":{"row":4,"column":35},"end":{"row":4,"column":36},"action":"insert","lines":["e"]},{"start":{"row":4,"column":36},"end":{"row":4,"column":37},"action":"insert","lines":["m"]},{"start":{"row":4,"column":37},"end":{"row":4,"column":38},"action":"insert","lines":["b"]},{"start":{"row":4,"column":38},"end":{"row":4,"column":39},"action":"insert","lines":["e"]},{"start":{"row":4,"column":39},"end":{"row":4,"column":40},"action":"insert","lines":["r"]}],[{"start":{"row":29,"column":25},"end":{"row":29,"column":26},"action":"remove","lines":["r"],"id":38},{"start":{"row":29,"column":24},"end":{"row":29,"column":25},"action":"remove","lines":["e"]},{"start":{"row":29,"column":23},"end":{"row":29,"column":24},"action":"remove","lines":["s"]},{"start":{"row":29,"column":22},"end":{"row":29,"column":23},"action":"remove","lines":["u"]}],[{"start":{"row":29,"column":22},"end":{"row":29,"column":23},"action":"insert","lines":["m"],"id":39},{"start":{"row":29,"column":23},"end":{"row":29,"column":24},"action":"insert","lines":["e"]},{"start":{"row":29,"column":24},"end":{"row":29,"column":25},"action":"insert","lines":["m"]},{"start":{"row":29,"column":25},"end":{"row":29,"column":26},"action":"insert","lines":["b"]},{"start":{"row":29,"column":26},"end":{"row":29,"column":27},"action":"insert","lines":["e"]},{"start":{"row":29,"column":27},"end":{"row":29,"column":28},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":86},"end":{"row":32,"column":87},"action":"remove","lines":["\""],"id":40}],[{"start":{"row":32,"column":90},"end":{"row":32,"column":91},"action":"remove","lines":["\""],"id":41}],[{"start":{"row":4,"column":3},"end":{"row":4,"column":57},"action":"remove","lines":["before_action :reject_inactive_member, only: [:create]"],"id":42},{"start":{"row":4,"column":3},"end":{"row":5,"column":0},"action":"insert","lines":["before_action :reject_user, only: [:create]",""]}],[{"start":{"row":4,"column":46},"end":{"row":5,"column":0},"action":"remove","lines":["",""],"id":43}],[{"start":{"row":4,"column":28},"end":{"row":4,"column":29},"action":"remove","lines":["r"],"id":44},{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"remove","lines":["e"]},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"remove","lines":["s"]},{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"remove","lines":["u"]}],[{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"insert","lines":["m"],"id":45},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["e"]},{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"insert","lines":["m"]},{"start":{"row":4,"column":28},"end":{"row":4,"column":29},"action":"insert","lines":["b"]},{"start":{"row":4,"column":29},"end":{"row":4,"column":30},"action":"insert","lines":["e"]},{"start":{"row":4,"column":30},"end":{"row":4,"column":31},"action":"insert","lines":["r"]}],[{"start":{"row":29,"column":2},"end":{"row":36,"column":5},"action":"remove","lines":["def reject_inactive_member","    @member = Member.find_by(email: params[:member][:email])","    if @member","      if @member.valid_password?(params[:member][:password]) && @member.is_deleted == true","        redirect_to new_member_session_path","      end","    end","  end"],"id":46},{"start":{"row":29,"column":2},"end":{"row":39,"column":5},"action":"insert","lines":["def reject_user","    @user = User.find_by(email: params[:user][:email].downcase)","    if @user","      if (@user.valid_password?(params[:user][:password]) && (@user.active_for_authentication? == false))","        flash[:error] = \"退会済みです。\"","        redirect_to new_user_session_path","      end","    else","      flash[:error] = \"必須項目を入力してください。\"","    end","  end"]}],[{"start":{"row":29,"column":16},"end":{"row":29,"column":17},"action":"remove","lines":["r"],"id":47},{"start":{"row":29,"column":15},"end":{"row":29,"column":16},"action":"remove","lines":["e"]},{"start":{"row":29,"column":14},"end":{"row":29,"column":15},"action":"remove","lines":["s"]},{"start":{"row":29,"column":13},"end":{"row":29,"column":14},"action":"remove","lines":["u"]}],[{"start":{"row":29,"column":13},"end":{"row":29,"column":14},"action":"insert","lines":["m"],"id":48},{"start":{"row":29,"column":14},"end":{"row":29,"column":15},"action":"insert","lines":["e"]},{"start":{"row":29,"column":15},"end":{"row":29,"column":16},"action":"insert","lines":["m"]},{"start":{"row":29,"column":16},"end":{"row":29,"column":17},"action":"insert","lines":["b"]},{"start":{"row":29,"column":17},"end":{"row":29,"column":18},"action":"insert","lines":["e"]},{"start":{"row":29,"column":18},"end":{"row":29,"column":19},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"remove","lines":["r"],"id":49},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"remove","lines":["e"]},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"remove","lines":["s"]},{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"remove","lines":["u"]}],[{"start":{"row":30,"column":5},"end":{"row":30,"column":6},"action":"insert","lines":["m"],"id":50},{"start":{"row":30,"column":6},"end":{"row":30,"column":7},"action":"insert","lines":["e"]},{"start":{"row":30,"column":7},"end":{"row":30,"column":8},"action":"insert","lines":["m"]},{"start":{"row":30,"column":8},"end":{"row":30,"column":9},"action":"insert","lines":["b"]},{"start":{"row":30,"column":9},"end":{"row":30,"column":10},"action":"insert","lines":["e"]},{"start":{"row":30,"column":10},"end":{"row":30,"column":11},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"remove","lines":["r"],"id":51},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"remove","lines":["e"]},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"remove","lines":["s"]},{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"remove","lines":["U"]}],[{"start":{"row":30,"column":14},"end":{"row":30,"column":15},"action":"insert","lines":["M"],"id":52},{"start":{"row":30,"column":15},"end":{"row":30,"column":16},"action":"insert","lines":["e"]},{"start":{"row":30,"column":16},"end":{"row":30,"column":17},"action":"insert","lines":["m"]},{"start":{"row":30,"column":17},"end":{"row":30,"column":18},"action":"insert","lines":["b"]},{"start":{"row":30,"column":18},"end":{"row":30,"column":19},"action":"insert","lines":["e"]},{"start":{"row":30,"column":19},"end":{"row":30,"column":20},"action":"insert","lines":["r"]}],[{"start":{"row":30,"column":47},"end":{"row":30,"column":48},"action":"remove","lines":["r"],"id":53},{"start":{"row":30,"column":46},"end":{"row":30,"column":47},"action":"remove","lines":["e"]},{"start":{"row":30,"column":45},"end":{"row":30,"column":46},"action":"remove","lines":["s"]},{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"remove","lines":["u"]}],[{"start":{"row":30,"column":44},"end":{"row":30,"column":45},"action":"insert","lines":["m"],"id":54},{"start":{"row":30,"column":45},"end":{"row":30,"column":46},"action":"insert","lines":["e"]},{"start":{"row":30,"column":46},"end":{"row":30,"column":47},"action":"insert","lines":["m"]},{"start":{"row":30,"column":47},"end":{"row":30,"column":48},"action":"insert","lines":["b"]},{"start":{"row":30,"column":48},"end":{"row":30,"column":49},"action":"insert","lines":["e"]},{"start":{"row":30,"column":49},"end":{"row":30,"column":50},"action":"insert","lines":["r"]}],[{"start":{"row":31,"column":11},"end":{"row":31,"column":12},"action":"remove","lines":["r"],"id":55},{"start":{"row":31,"column":10},"end":{"row":31,"column":11},"action":"remove","lines":["e"]},{"start":{"row":31,"column":9},"end":{"row":31,"column":10},"action":"remove","lines":["s"]},{"start":{"row":31,"column":8},"end":{"row":31,"column":9},"action":"remove","lines":["u"]}],[{"start":{"row":31,"column":8},"end":{"row":31,"column":9},"action":"insert","lines":["m"],"id":56},{"start":{"row":31,"column":9},"end":{"row":31,"column":10},"action":"insert","lines":["e"]},{"start":{"row":31,"column":10},"end":{"row":31,"column":11},"action":"insert","lines":["m"]},{"start":{"row":31,"column":11},"end":{"row":31,"column":12},"action":"insert","lines":["b"]},{"start":{"row":31,"column":12},"end":{"row":31,"column":13},"action":"insert","lines":["e"]},{"start":{"row":31,"column":13},"end":{"row":31,"column":14},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"remove","lines":["r"],"id":57},{"start":{"row":32,"column":13},"end":{"row":32,"column":14},"action":"remove","lines":["e"]},{"start":{"row":32,"column":12},"end":{"row":32,"column":13},"action":"remove","lines":["s"]},{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"insert","lines":["m"],"id":58},{"start":{"row":32,"column":12},"end":{"row":32,"column":13},"action":"insert","lines":["e"]},{"start":{"row":32,"column":13},"end":{"row":32,"column":14},"action":"insert","lines":["m"]},{"start":{"row":32,"column":14},"end":{"row":32,"column":15},"action":"insert","lines":["b"]},{"start":{"row":32,"column":15},"end":{"row":32,"column":16},"action":"insert","lines":["e"]},{"start":{"row":32,"column":16},"end":{"row":32,"column":17},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":45},"end":{"row":32,"column":46},"action":"remove","lines":["r"],"id":59},{"start":{"row":32,"column":44},"end":{"row":32,"column":45},"action":"remove","lines":["e"]},{"start":{"row":32,"column":43},"end":{"row":32,"column":44},"action":"remove","lines":["s"]},{"start":{"row":32,"column":42},"end":{"row":32,"column":43},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":42},"end":{"row":32,"column":43},"action":"insert","lines":["m"],"id":60},{"start":{"row":32,"column":43},"end":{"row":32,"column":44},"action":"insert","lines":["e"]},{"start":{"row":32,"column":44},"end":{"row":32,"column":45},"action":"insert","lines":["m"]},{"start":{"row":32,"column":45},"end":{"row":32,"column":46},"action":"insert","lines":["b"]},{"start":{"row":32,"column":46},"end":{"row":32,"column":47},"action":"insert","lines":["e"]},{"start":{"row":32,"column":47},"end":{"row":32,"column":48},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":70},"end":{"row":32,"column":71},"action":"remove","lines":["r"],"id":61},{"start":{"row":32,"column":69},"end":{"row":32,"column":70},"action":"remove","lines":["e"]},{"start":{"row":32,"column":68},"end":{"row":32,"column":69},"action":"remove","lines":["s"]},{"start":{"row":32,"column":67},"end":{"row":32,"column":68},"action":"remove","lines":["u"]}],[{"start":{"row":32,"column":67},"end":{"row":32,"column":68},"action":"insert","lines":["m"],"id":62},{"start":{"row":32,"column":68},"end":{"row":32,"column":69},"action":"insert","lines":["e"]},{"start":{"row":32,"column":69},"end":{"row":32,"column":70},"action":"insert","lines":["m"]},{"start":{"row":32,"column":70},"end":{"row":32,"column":71},"action":"insert","lines":["b"]},{"start":{"row":32,"column":71},"end":{"row":32,"column":72},"action":"insert","lines":["e"]},{"start":{"row":32,"column":72},"end":{"row":32,"column":73},"action":"insert","lines":["r"]}],[{"start":{"row":34,"column":27},"end":{"row":34,"column":28},"action":"remove","lines":["r"],"id":63},{"start":{"row":34,"column":26},"end":{"row":34,"column":27},"action":"remove","lines":["e"]},{"start":{"row":34,"column":25},"end":{"row":34,"column":26},"action":"remove","lines":["s"]},{"start":{"row":34,"column":24},"end":{"row":34,"column":25},"action":"remove","lines":["u"]}],[{"start":{"row":34,"column":24},"end":{"row":34,"column":25},"action":"insert","lines":["m"],"id":64},{"start":{"row":34,"column":25},"end":{"row":34,"column":26},"action":"insert","lines":["e"]},{"start":{"row":34,"column":26},"end":{"row":34,"column":27},"action":"insert","lines":["m"]},{"start":{"row":34,"column":27},"end":{"row":34,"column":28},"action":"insert","lines":["b"]},{"start":{"row":34,"column":28},"end":{"row":34,"column":29},"action":"insert","lines":["e"]},{"start":{"row":34,"column":29},"end":{"row":34,"column":30},"action":"insert","lines":["r"]}],[{"start":{"row":34,"column":18},"end":{"row":34,"column":19},"action":"remove","lines":["o"],"id":69},{"start":{"row":34,"column":17},"end":{"row":34,"column":18},"action":"remove","lines":["t"]},{"start":{"row":34,"column":16},"end":{"row":34,"column":17},"action":"remove","lines":["_"]},{"start":{"row":34,"column":15},"end":{"row":34,"column":16},"action":"remove","lines":["t"]},{"start":{"row":34,"column":14},"end":{"row":34,"column":15},"action":"remove","lines":["c"]},{"start":{"row":34,"column":13},"end":{"row":34,"column":14},"action":"remove","lines":["e"]},{"start":{"row":34,"column":12},"end":{"row":34,"column":13},"action":"remove","lines":["r"]},{"start":{"row":34,"column":11},"end":{"row":34,"column":12},"action":"remove","lines":["i"]},{"start":{"row":34,"column":10},"end":{"row":34,"column":11},"action":"remove","lines":["d"]},{"start":{"row":34,"column":9},"end":{"row":34,"column":10},"action":"remove","lines":["e"]},{"start":{"row":34,"column":8},"end":{"row":34,"column":9},"action":"remove","lines":["r"]},{"start":{"row":34,"column":6},"end":{"row":34,"column":8},"action":"remove","lines":["  "]}],[{"start":{"row":34,"column":6},"end":{"row":34,"column":7},"action":"insert","lines":[" "],"id":70},{"start":{"row":34,"column":7},"end":{"row":34,"column":8},"action":"insert","lines":[" "]},{"start":{"row":34,"column":8},"end":{"row":34,"column":9},"action":"insert","lines":["r"]},{"start":{"row":34,"column":9},"end":{"row":34,"column":10},"action":"insert","lines":["e"]},{"start":{"row":34,"column":10},"end":{"row":34,"column":11},"action":"insert","lines":["n"]},{"start":{"row":34,"column":11},"end":{"row":34,"column":12},"action":"insert","lines":["d"]}],[{"start":{"row":34,"column":12},"end":{"row":34,"column":13},"action":"insert","lines":["r"],"id":71}],[{"start":{"row":34,"column":12},"end":{"row":34,"column":13},"action":"remove","lines":["r"],"id":72}],[{"start":{"row":34,"column":12},"end":{"row":34,"column":13},"action":"insert","lines":["e"],"id":73},{"start":{"row":34,"column":13},"end":{"row":34,"column":14},"action":"insert","lines":["r"]},{"start":{"row":34,"column":14},"end":{"row":34,"column":15},"action":"insert","lines":[":"]}],[{"start":{"row":34,"column":14},"end":{"row":34,"column":15},"action":"remove","lines":[":"],"id":74}],[{"start":{"row":36,"column":0},"end":{"row":37,"column":38},"action":"remove","lines":["    else","      flash[:error] = \"必須項目を入力してください。\""],"id":75},{"start":{"row":35,"column":9},"end":{"row":36,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":36,"column":0},"end":{"row":36,"column":7},"action":"remove","lines":["    end"],"id":76},{"start":{"row":35,"column":9},"end":{"row":36,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":33,"column":0},"end":{"row":33,"column":33},"action":"remove","lines":["        flash[:error] = \"退会済みです。\""],"id":77},{"start":{"row":32,"column":111},"end":{"row":33,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":31,"column":0},"end":{"row":31,"column":14},"action":"remove","lines":["    if @member"],"id":78},{"start":{"row":30,"column":69},"end":{"row":31,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":31,"column":4},"end":{"row":31,"column":6},"action":"remove","lines":["  "],"id":79}],[{"start":{"row":32,"column":6},"end":{"row":32,"column":8},"action":"remove","lines":["  "],"id":80}],[{"start":{"row":33,"column":4},"end":{"row":33,"column":6},"action":"remove","lines":["  "],"id":81}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":3},"action":"remove","lines":[" "],"id":82}],[{"start":{"row":32,"column":11},"end":{"row":32,"column":12},"action":"remove","lines":["r"],"id":83},{"start":{"row":32,"column":10},"end":{"row":32,"column":11},"action":"remove","lines":["e"]},{"start":{"row":32,"column":9},"end":{"row":32,"column":10},"action":"remove","lines":["d"]},{"start":{"row":32,"column":8},"end":{"row":32,"column":9},"action":"remove","lines":["n"]},{"start":{"row":32,"column":7},"end":{"row":32,"column":8},"action":"remove","lines":["e"]},{"start":{"row":32,"column":6},"end":{"row":32,"column":7},"action":"remove","lines":["r"]}]]},"ace":{"folds":[],"scrolltop":253,"scrollleft":0,"selection":{"start":{"row":32,"column":36},"end":{"row":32,"column":36},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":17,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1635571240070,"hash":"c2b415796f65f6718f6c585a95856bae105d5e4a"}