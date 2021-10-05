{"filter":false,"title":"routes.rb","tooltip":"/notice/config/routes.rb","undoManager":{"mark":99,"position":99,"stack":[[{"start":{"row":1,"column":1},"end":{"row":1,"column":101},"action":"remove","lines":[" # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html"],"id":2}],[{"start":{"row":1,"column":1},"end":{"row":34,"column":5},"action":"insert","lines":["  get 'search/search'","  #adminのルート","  devise_for :admin","  namespace :admin do","    resources :members, only: [:index,:show,:edit,:update]","    resources :products, only: [:index,:new,:create,:edit,:update,:show]","    resources :genres,only: [:index,:create,:edit,:update,:show]","    resources :orders, only: [:index, :show, :update]","    root to: 'orders#index'","    resources :order_products, only: [:update]","  end","","  devise_for :members, :controllers  => {","    :registrations => 'members/registrations',","    :sessions => 'members/sessions'","  }","","  scope module: :members do","    root to: 'homes#top'","    get '/about' => 'homes#about'","    resource :members, only: [:show,:update]","    get 'members/myedit' => 'members#edit'","    patch 'members/myedit' => 'members#update'","    patch 'members/withdraw' => 'members#withdraw', as: :members_withdraw","    get 'members/leave' => 'members#leave'","    resources :products, only: [:show, :index]","    get 'search' => 'search'","    resources :cart_products, only: [:index, :create, :update, :destroy]","    delete 'cart_products' => 'cart_products#destroy_all', as: :destroy_all_members_cart_products","    post '/orders/info'  => 'orders#info'","    get  '/orders/thanks' => 'orders#thanks'","    resources :orders, only:[:new, :create, :show, :index]","    resources :destinations, only: [:index, :create, :edit, :update, :destroy]","  end"],"id":3}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["#"],"id":4},{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["# "]},{"start":{"row":3,"column":2},"end":{"row":3,"column":4},"action":"insert","lines":["# "]},{"start":{"row":4,"column":2},"end":{"row":4,"column":4},"action":"insert","lines":["# "]},{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"insert","lines":["# "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"insert","lines":["# "]},{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"insert","lines":["# "]},{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"insert","lines":["# "]},{"start":{"row":9,"column":2},"end":{"row":9,"column":4},"action":"insert","lines":["# "]},{"start":{"row":10,"column":2},"end":{"row":10,"column":4},"action":"insert","lines":["# "]},{"start":{"row":11,"column":2},"end":{"row":11,"column":4},"action":"insert","lines":["# "]},{"start":{"row":13,"column":2},"end":{"row":13,"column":4},"action":"insert","lines":["# "]},{"start":{"row":14,"column":2},"end":{"row":14,"column":4},"action":"insert","lines":["# "]},{"start":{"row":15,"column":2},"end":{"row":15,"column":4},"action":"insert","lines":["# "]},{"start":{"row":16,"column":2},"end":{"row":16,"column":4},"action":"insert","lines":["# "]},{"start":{"row":18,"column":2},"end":{"row":18,"column":4},"action":"insert","lines":["# "]},{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"insert","lines":["# "]},{"start":{"row":20,"column":2},"end":{"row":20,"column":4},"action":"insert","lines":["# "]},{"start":{"row":21,"column":2},"end":{"row":21,"column":4},"action":"insert","lines":["# "]},{"start":{"row":22,"column":2},"end":{"row":22,"column":4},"action":"insert","lines":["# "]},{"start":{"row":23,"column":2},"end":{"row":23,"column":4},"action":"insert","lines":["# "]},{"start":{"row":24,"column":2},"end":{"row":24,"column":4},"action":"insert","lines":["# "]},{"start":{"row":25,"column":2},"end":{"row":25,"column":4},"action":"insert","lines":["# "]},{"start":{"row":26,"column":2},"end":{"row":26,"column":4},"action":"insert","lines":["# "]},{"start":{"row":27,"column":2},"end":{"row":27,"column":4},"action":"insert","lines":["# "]},{"start":{"row":28,"column":2},"end":{"row":28,"column":4},"action":"insert","lines":["# "]},{"start":{"row":29,"column":2},"end":{"row":29,"column":4},"action":"insert","lines":["# "]},{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"insert","lines":["# "]},{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"insert","lines":["# "]},{"start":{"row":32,"column":2},"end":{"row":32,"column":4},"action":"insert","lines":["# "]},{"start":{"row":33,"column":2},"end":{"row":33,"column":4},"action":"insert","lines":["# "]},{"start":{"row":34,"column":2},"end":{"row":34,"column":4},"action":"insert","lines":["# "]}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :users",""],"id":5,"ignore":true}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :members",""],"id":6,"ignore":true}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :admins",""],"id":7,"ignore":true}],[{"start":{"row":3,"column":19},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":2},"end":{"row":5,"column":3},"action":"insert","lines":["r"]},{"start":{"row":5,"column":3},"end":{"row":5,"column":4},"action":"insert","lines":["o"]},{"start":{"row":5,"column":4},"end":{"row":5,"column":5},"action":"insert","lines":["o"]},{"start":{"row":5,"column":5},"end":{"row":5,"column":6},"action":"insert","lines":["t"]}],[{"start":{"row":5,"column":6},"end":{"row":5,"column":7},"action":"insert","lines":[" "],"id":9},{"start":{"row":5,"column":7},"end":{"row":5,"column":8},"action":"insert","lines":["t"]},{"start":{"row":5,"column":8},"end":{"row":5,"column":9},"action":"insert","lines":["o"]},{"start":{"row":5,"column":9},"end":{"row":5,"column":10},"action":"insert","lines":[":"]}],[{"start":{"row":5,"column":10},"end":{"row":5,"column":11},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"insert","lines":["()"],"id":11}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"remove","lines":["()"],"id":12}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"insert","lines":["''"],"id":13}],[{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"insert","lines":["h"],"id":14},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["o"]},{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["m"]},{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"insert","lines":["e"]},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"insert","lines":["s"]}],[{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"insert","lines":["#"],"id":15},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"insert","lines":["t"]},{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"insert","lines":["o"]},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"insert","lines":["p"]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "],"id":16}],[{"start":{"row":5,"column":22},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":17},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["r"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"insert","lines":["e"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["s"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":["o"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["u"]}],[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["r"],"id":18},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["c"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["e"]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":[" "],"id":19},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":[":"],"id":20},{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":[" "]}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":[" "],"id":21},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":[":"],"id":22},{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":[" "]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"remove","lines":["s"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"remove","lines":["e"]},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"remove","lines":["c"]},{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"remove","lines":["r"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"remove","lines":["u"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"remove","lines":["o"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["s"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"remove","lines":["e"]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"remove","lines":["r"]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":5,"column":22},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":23}],[{"start":{"row":5,"column":22},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":24},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["g"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"insert","lines":["e"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["t"]}],[{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":[" "],"id":25}],[{"start":{"row":6,"column":6},"end":{"row":6,"column":8},"action":"insert","lines":["''"],"id":26}],[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["f"],"id":27},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["a"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["m"]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["i"]},{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":["l"]},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":["y"]}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"insert","lines":["_"],"id":28},{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"insert","lines":["c"]},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["o"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["d"]}],[{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["e"],"id":29}],[{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["/"],"id":30},{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["i"]},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["n"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["d"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["x"],"id":31}],[{"start":{"row":6,"column":25},"end":{"row":6,"column":26},"action":"insert","lines":[" "],"id":32},{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["="]},{"start":{"row":6,"column":27},"end":{"row":6,"column":28},"action":"insert","lines":[">"]}],[{"start":{"row":6,"column":28},"end":{"row":6,"column":29},"action":"insert","lines":[" "],"id":33}],[{"start":{"row":6,"column":29},"end":{"row":6,"column":31},"action":"insert","lines":["''"],"id":34}],[{"start":{"row":6,"column":30},"end":{"row":6,"column":31},"action":"insert","lines":["f"],"id":35},{"start":{"row":6,"column":31},"end":{"row":6,"column":32},"action":"insert","lines":["a"]},{"start":{"row":6,"column":32},"end":{"row":6,"column":33},"action":"insert","lines":["m"]},{"start":{"row":6,"column":33},"end":{"row":6,"column":34},"action":"insert","lines":["i"]},{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"insert","lines":["l"]},{"start":{"row":6,"column":35},"end":{"row":6,"column":36},"action":"insert","lines":["y"]}],[{"start":{"row":6,"column":36},"end":{"row":6,"column":37},"action":"insert","lines":["_"],"id":36},{"start":{"row":6,"column":37},"end":{"row":6,"column":38},"action":"insert","lines":["c"]},{"start":{"row":6,"column":38},"end":{"row":6,"column":39},"action":"insert","lines":["o"]},{"start":{"row":6,"column":39},"end":{"row":6,"column":40},"action":"insert","lines":["d"]},{"start":{"row":6,"column":40},"end":{"row":6,"column":41},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":41},"end":{"row":6,"column":42},"action":"insert","lines":["s"],"id":37},{"start":{"row":6,"column":42},"end":{"row":6,"column":43},"action":"insert","lines":["/"]},{"start":{"row":6,"column":43},"end":{"row":6,"column":44},"action":"insert","lines":["i"]},{"start":{"row":6,"column":44},"end":{"row":6,"column":45},"action":"insert","lines":["n"]},{"start":{"row":6,"column":45},"end":{"row":6,"column":46},"action":"insert","lines":["d"]},{"start":{"row":6,"column":46},"end":{"row":6,"column":47},"action":"insert","lines":["e"]}],[{"start":{"row":6,"column":47},"end":{"row":6,"column":48},"action":"insert","lines":["x"],"id":38}],[{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["s"],"id":39}],[{"start":{"row":6,"column":24},"end":{"row":6,"column":25},"action":"remove","lines":["x"],"id":40},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"remove","lines":["e"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"remove","lines":["d"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"remove","lines":["n"]},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"remove","lines":["i"]}],[{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["n"],"id":41},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["e"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["w"]}],[{"start":{"row":6,"column":46},"end":{"row":6,"column":47},"action":"remove","lines":["x"],"id":42},{"start":{"row":6,"column":45},"end":{"row":6,"column":46},"action":"remove","lines":["e"]},{"start":{"row":6,"column":44},"end":{"row":6,"column":45},"action":"remove","lines":["d"]},{"start":{"row":6,"column":43},"end":{"row":6,"column":44},"action":"remove","lines":["n"]},{"start":{"row":6,"column":42},"end":{"row":6,"column":43},"action":"remove","lines":["i"]}],[{"start":{"row":6,"column":42},"end":{"row":6,"column":43},"action":"insert","lines":["n"],"id":43},{"start":{"row":6,"column":43},"end":{"row":6,"column":44},"action":"insert","lines":["e"]},{"start":{"row":6,"column":44},"end":{"row":6,"column":45},"action":"insert","lines":["w"]}],[{"start":{"row":6,"column":1},"end":{"row":6,"column":46},"action":"remove","lines":[" get 'family_codes/new' => 'family_codes/new'"],"id":44}],[{"start":{"row":6,"column":1},"end":{"row":6,"column":2},"action":"insert","lines":[" "],"id":45},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["r"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"insert","lines":["e"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["s"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":["o"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["u"]}],[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["r"],"id":46},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["c"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["i"]}],[{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"remove","lines":["i"],"id":47}],[{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["e"],"id":48},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":[" "],"id":49},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":6,"column":13},"end":{"row":6,"column":14},"action":"insert","lines":["f"],"id":50},{"start":{"row":6,"column":14},"end":{"row":6,"column":15},"action":"insert","lines":["a"]},{"start":{"row":6,"column":15},"end":{"row":6,"column":16},"action":"insert","lines":["m"]},{"start":{"row":6,"column":16},"end":{"row":6,"column":17},"action":"insert","lines":["i"]},{"start":{"row":6,"column":17},"end":{"row":6,"column":18},"action":"insert","lines":["l"]},{"start":{"row":6,"column":18},"end":{"row":6,"column":19},"action":"insert","lines":["y"]}],[{"start":{"row":6,"column":19},"end":{"row":6,"column":20},"action":"insert","lines":["c"],"id":51},{"start":{"row":6,"column":20},"end":{"row":6,"column":21},"action":"insert","lines":["o"]},{"start":{"row":6,"column":21},"end":{"row":6,"column":22},"action":"insert","lines":["d"]},{"start":{"row":6,"column":22},"end":{"row":6,"column":23},"action":"insert","lines":["e"]},{"start":{"row":6,"column":23},"end":{"row":6,"column":24},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":24},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":52},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":7,"column":2},"end":{"row":7,"column":3},"action":"insert","lines":["r"],"id":53},{"start":{"row":7,"column":3},"end":{"row":7,"column":4},"action":"insert","lines":["e"]},{"start":{"row":7,"column":4},"end":{"row":7,"column":5},"action":"insert","lines":["s"]},{"start":{"row":7,"column":5},"end":{"row":7,"column":6},"action":"insert","lines":["o"]},{"start":{"row":7,"column":6},"end":{"row":7,"column":7},"action":"insert","lines":["u"]},{"start":{"row":7,"column":7},"end":{"row":7,"column":8},"action":"insert","lines":["r"]},{"start":{"row":7,"column":8},"end":{"row":7,"column":9},"action":"insert","lines":["c"]},{"start":{"row":7,"column":9},"end":{"row":7,"column":10},"action":"insert","lines":["e"]},{"start":{"row":7,"column":10},"end":{"row":7,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":7,"column":11},"end":{"row":7,"column":12},"action":"insert","lines":[" "],"id":54},{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["m"],"id":55},{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["e"]},{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["m"]},{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["b"]},{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["e"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["r"]},{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["s"]}],[{"start":{"row":7,"column":13},"end":{"row":7,"column":20},"action":"remove","lines":["members"],"id":56},{"start":{"row":7,"column":13},"end":{"row":7,"column":20},"action":"insert","lines":["members"]}],[{"start":{"row":7,"column":20},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":57},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]},{"start":{"row":8,"column":2},"end":{"row":8,"column":3},"action":"insert","lines":["r"]},{"start":{"row":8,"column":3},"end":{"row":8,"column":4},"action":"insert","lines":["e"]},{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["s"]},{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["o"]},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"insert","lines":["u"]},{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"insert","lines":["r"]}],[{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"insert","lines":["c"],"id":58},{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"insert","lines":["e"]},{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"insert","lines":[" "],"id":59},{"start":{"row":8,"column":12},"end":{"row":8,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":8,"column":13},"end":{"row":8,"column":14},"action":"insert","lines":["u"],"id":60},{"start":{"row":8,"column":14},"end":{"row":8,"column":15},"action":"insert","lines":["s"]},{"start":{"row":8,"column":15},"end":{"row":8,"column":16},"action":"insert","lines":["e"]},{"start":{"row":8,"column":16},"end":{"row":8,"column":17},"action":"insert","lines":["r"]},{"start":{"row":8,"column":17},"end":{"row":8,"column":18},"action":"insert","lines":["s"]}],[{"start":{"row":8,"column":18},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":61},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":9,"column":2},"end":{"row":9,"column":3},"action":"insert","lines":["r"],"id":62},{"start":{"row":9,"column":3},"end":{"row":9,"column":4},"action":"insert","lines":["e"]},{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"insert","lines":["s"]},{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"insert","lines":["o"]},{"start":{"row":9,"column":6},"end":{"row":9,"column":7},"action":"insert","lines":["u"]},{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"insert","lines":["r"]},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["c"]},{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"insert","lines":["e"]},{"start":{"row":9,"column":10},"end":{"row":9,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":9,"column":11},"end":{"row":9,"column":12},"action":"insert","lines":[" "],"id":63},{"start":{"row":9,"column":12},"end":{"row":9,"column":13},"action":"insert","lines":[":"]},{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["a"]},{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"insert","lines":["d"]},{"start":{"row":9,"column":15},"end":{"row":9,"column":16},"action":"insert","lines":["m"]},{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"insert","lines":["i"]},{"start":{"row":9,"column":17},"end":{"row":9,"column":18},"action":"insert","lines":["n"]}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":["s"],"id":64}],[{"start":{"row":9,"column":19},"end":{"row":10,"column":0},"action":"insert","lines":["",""],"id":65},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"remove","lines":["  "],"id":66},{"start":{"row":9,"column":19},"end":{"row":10,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":9,"column":19},"end":{"row":10,"column":0},"action":"insert","lines":["",""],"id":67},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]},{"start":{"row":10,"column":2},"end":{"row":10,"column":3},"action":"insert","lines":["g"]},{"start":{"row":10,"column":3},"end":{"row":10,"column":4},"action":"insert","lines":["e"]},{"start":{"row":10,"column":4},"end":{"row":10,"column":5},"action":"insert","lines":["t"]}],[{"start":{"row":10,"column":5},"end":{"row":10,"column":6},"action":"insert","lines":[" "],"id":68}],[{"start":{"row":10,"column":6},"end":{"row":10,"column":8},"action":"insert","lines":["''"],"id":69}],[{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"insert","lines":["f"],"id":70},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"insert","lines":["a"]},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"insert","lines":["m"]},{"start":{"row":10,"column":10},"end":{"row":10,"column":11},"action":"insert","lines":["i"]},{"start":{"row":10,"column":11},"end":{"row":10,"column":12},"action":"insert","lines":["l"]},{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":["y"]}],[{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"insert","lines":["c"],"id":71},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"insert","lines":["o"]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"insert","lines":["d"]},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"insert","lines":["e"]},{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"insert","lines":["s"]}],[{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"insert","lines":["/"],"id":72}],[{"start":{"row":10,"column":19},"end":{"row":10,"column":20},"action":"insert","lines":["c"],"id":73},{"start":{"row":10,"column":20},"end":{"row":10,"column":21},"action":"insert","lines":["o"]},{"start":{"row":10,"column":21},"end":{"row":10,"column":22},"action":"insert","lines":["n"]},{"start":{"row":10,"column":22},"end":{"row":10,"column":23},"action":"insert","lines":["f"]},{"start":{"row":10,"column":23},"end":{"row":10,"column":24},"action":"insert","lines":["i"]},{"start":{"row":10,"column":24},"end":{"row":10,"column":25},"action":"insert","lines":["r"]},{"start":{"row":10,"column":25},"end":{"row":10,"column":26},"action":"insert","lines":["m"]}],[{"start":{"row":10,"column":27},"end":{"row":10,"column":28},"action":"insert","lines":[" "],"id":74},{"start":{"row":10,"column":28},"end":{"row":10,"column":29},"action":"insert","lines":["="]}],[{"start":{"row":10,"column":29},"end":{"row":10,"column":30},"action":"insert","lines":[">"],"id":75}],[{"start":{"row":10,"column":30},"end":{"row":10,"column":31},"action":"insert","lines":[" "],"id":76}],[{"start":{"row":10,"column":31},"end":{"row":10,"column":33},"action":"insert","lines":["''"],"id":77}],[{"start":{"row":10,"column":32},"end":{"row":10,"column":33},"action":"insert","lines":["f"],"id":78},{"start":{"row":10,"column":33},"end":{"row":10,"column":34},"action":"insert","lines":["a"]},{"start":{"row":10,"column":34},"end":{"row":10,"column":35},"action":"insert","lines":["m"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"insert","lines":["i"]},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"insert","lines":["l"]},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"insert","lines":["y"]},{"start":{"row":10,"column":38},"end":{"row":10,"column":39},"action":"insert","lines":["c"]},{"start":{"row":10,"column":39},"end":{"row":10,"column":40},"action":"insert","lines":["o"]},{"start":{"row":10,"column":40},"end":{"row":10,"column":41},"action":"insert","lines":["d"]},{"start":{"row":10,"column":41},"end":{"row":10,"column":42},"action":"insert","lines":["e"]}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":["s"],"id":79},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"insert","lines":["/"]}],[{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"insert","lines":["c"],"id":80},{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"insert","lines":["o"]},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"insert","lines":["n"]},{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"insert","lines":["r"]},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"insert","lines":["i"]},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"insert","lines":["r"]},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"insert","lines":["m"]}],[{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"remove","lines":["m"],"id":81},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"remove","lines":["r"]},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"remove","lines":["i"]},{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"remove","lines":["r"]}],[{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"insert","lines":["f"],"id":82},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"insert","lines":["i"]},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"insert","lines":["r"]},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"insert","lines":["m"]}],[{"start":{"row":10,"column":0},"end":{"row":10,"column":52},"action":"remove","lines":["  get 'familycodes/confirm' => 'familycodes/confirm'"],"id":83},{"start":{"row":9,"column":19},"end":{"row":10,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":9,"column":19},"end":{"row":10,"column":0},"action":"insert","lines":["",""],"id":84},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]},{"start":{"row":10,"column":2},"end":{"row":10,"column":3},"action":"insert","lines":["r"]},{"start":{"row":10,"column":3},"end":{"row":10,"column":4},"action":"insert","lines":["e"]},{"start":{"row":10,"column":4},"end":{"row":10,"column":5},"action":"insert","lines":["s"]},{"start":{"row":10,"column":5},"end":{"row":10,"column":6},"action":"insert","lines":["o"]},{"start":{"row":10,"column":6},"end":{"row":10,"column":7},"action":"insert","lines":["u"]}],[{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"insert","lines":["t"],"id":85},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"insert","lines":["y"]},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"insert","lines":["c"]}],[{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"remove","lines":["c"],"id":86},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"remove","lines":["y"]},{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"remove","lines":["t"]}],[{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"insert","lines":["r"],"id":87},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"insert","lines":["c"]},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"insert","lines":["e"]},{"start":{"row":10,"column":10},"end":{"row":10,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":10,"column":11},"end":{"row":10,"column":12},"action":"insert","lines":[" "],"id":88},{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":[":"]},{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"insert","lines":["p"]},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"insert","lines":["o"]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"insert","lines":["s"]},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"insert","lines":["t"]}],[{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"insert","lines":["s"],"id":89}],[{"start":{"row":10,"column":13},"end":{"row":10,"column":18},"action":"remove","lines":["posts"],"id":90},{"start":{"row":10,"column":13},"end":{"row":10,"column":23},"action":"insert","lines":["posts_path"]}],[{"start":{"row":10,"column":22},"end":{"row":10,"column":23},"action":"remove","lines":["h"],"id":91},{"start":{"row":10,"column":21},"end":{"row":10,"column":22},"action":"remove","lines":["t"]},{"start":{"row":10,"column":20},"end":{"row":10,"column":21},"action":"remove","lines":["a"]},{"start":{"row":10,"column":19},"end":{"row":10,"column":20},"action":"remove","lines":["p"]},{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"remove","lines":["_"]}],[{"start":{"row":8,"column":18},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":92},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "]},{"start":{"row":9,"column":2},"end":{"row":9,"column":3},"action":"insert","lines":["g"]},{"start":{"row":9,"column":3},"end":{"row":9,"column":4},"action":"insert","lines":["e"]},{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"insert","lines":["t"]}],[{"start":{"row":9,"column":5},"end":{"row":9,"column":6},"action":"insert","lines":[" "],"id":93}],[{"start":{"row":9,"column":6},"end":{"row":9,"column":8},"action":"insert","lines":["''"],"id":94}],[{"start":{"row":9,"column":7},"end":{"row":9,"column":8},"action":"insert","lines":["u"],"id":95},{"start":{"row":9,"column":8},"end":{"row":9,"column":9},"action":"insert","lines":["s"]},{"start":{"row":9,"column":9},"end":{"row":9,"column":10},"action":"insert","lines":["e"]},{"start":{"row":9,"column":10},"end":{"row":9,"column":11},"action":"insert","lines":["r"]},{"start":{"row":9,"column":11},"end":{"row":9,"column":12},"action":"insert","lines":["s"]},{"start":{"row":9,"column":12},"end":{"row":9,"column":13},"action":"insert","lines":["/"]}],[{"start":{"row":9,"column":13},"end":{"row":9,"column":14},"action":"insert","lines":["s"],"id":96},{"start":{"row":9,"column":14},"end":{"row":9,"column":15},"action":"insert","lines":["h"]},{"start":{"row":9,"column":15},"end":{"row":9,"column":16},"action":"insert","lines":["o"]},{"start":{"row":9,"column":16},"end":{"row":9,"column":17},"action":"insert","lines":["w"]}],[{"start":{"row":9,"column":18},"end":{"row":9,"column":19},"action":"insert","lines":[" "],"id":97},{"start":{"row":9,"column":19},"end":{"row":9,"column":20},"action":"insert","lines":["="]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":[">"]}],[{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":[" "],"id":98},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["u"]},{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"insert","lines":["s"]},{"start":{"row":9,"column":24},"end":{"row":9,"column":25},"action":"insert","lines":["e"]},{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["r"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["s"]}],[{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"insert","lines":["/"],"id":99},{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"insert","lines":["s"]},{"start":{"row":9,"column":29},"end":{"row":9,"column":30},"action":"insert","lines":["h"]},{"start":{"row":9,"column":30},"end":{"row":9,"column":31},"action":"insert","lines":["o"]},{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"insert","lines":["w"]}],[{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"insert","lines":["'"],"id":100}],[{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["'"],"id":101}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":18},"end":{"row":11,"column":18},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1633400595447,"hash":"17d32e3cd577c8ebc56738c4d42db498595b1a43"}