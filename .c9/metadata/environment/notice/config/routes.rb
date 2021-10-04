{"filter":false,"title":"routes.rb","tooltip":"/notice/config/routes.rb","undoManager":{"mark":21,"position":21,"stack":[[{"start":{"row":1,"column":1},"end":{"row":1,"column":101},"action":"remove","lines":[" # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html"],"id":2}],[{"start":{"row":1,"column":1},"end":{"row":34,"column":5},"action":"insert","lines":["  get 'search/search'","  #adminのルート","  devise_for :admin","  namespace :admin do","    resources :members, only: [:index,:show,:edit,:update]","    resources :products, only: [:index,:new,:create,:edit,:update,:show]","    resources :genres,only: [:index,:create,:edit,:update,:show]","    resources :orders, only: [:index, :show, :update]","    root to: 'orders#index'","    resources :order_products, only: [:update]","  end","","  devise_for :members, :controllers  => {","    :registrations => 'members/registrations',","    :sessions => 'members/sessions'","  }","","  scope module: :members do","    root to: 'homes#top'","    get '/about' => 'homes#about'","    resource :members, only: [:show,:update]","    get 'members/myedit' => 'members#edit'","    patch 'members/myedit' => 'members#update'","    patch 'members/withdraw' => 'members#withdraw', as: :members_withdraw","    get 'members/leave' => 'members#leave'","    resources :products, only: [:show, :index]","    get 'search' => 'search'","    resources :cart_products, only: [:index, :create, :update, :destroy]","    delete 'cart_products' => 'cart_products#destroy_all', as: :destroy_all_members_cart_products","    post '/orders/info'  => 'orders#info'","    get  '/orders/thanks' => 'orders#thanks'","    resources :orders, only:[:new, :create, :show, :index]","    resources :destinations, only: [:index, :create, :edit, :update, :destroy]","  end"],"id":3}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["#"],"id":4},{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["# "]},{"start":{"row":3,"column":2},"end":{"row":3,"column":4},"action":"insert","lines":["# "]},{"start":{"row":4,"column":2},"end":{"row":4,"column":4},"action":"insert","lines":["# "]},{"start":{"row":5,"column":2},"end":{"row":5,"column":4},"action":"insert","lines":["# "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"insert","lines":["# "]},{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"insert","lines":["# "]},{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"insert","lines":["# "]},{"start":{"row":9,"column":2},"end":{"row":9,"column":4},"action":"insert","lines":["# "]},{"start":{"row":10,"column":2},"end":{"row":10,"column":4},"action":"insert","lines":["# "]},{"start":{"row":11,"column":2},"end":{"row":11,"column":4},"action":"insert","lines":["# "]},{"start":{"row":13,"column":2},"end":{"row":13,"column":4},"action":"insert","lines":["# "]},{"start":{"row":14,"column":2},"end":{"row":14,"column":4},"action":"insert","lines":["# "]},{"start":{"row":15,"column":2},"end":{"row":15,"column":4},"action":"insert","lines":["# "]},{"start":{"row":16,"column":2},"end":{"row":16,"column":4},"action":"insert","lines":["# "]},{"start":{"row":18,"column":2},"end":{"row":18,"column":4},"action":"insert","lines":["# "]},{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"insert","lines":["# "]},{"start":{"row":20,"column":2},"end":{"row":20,"column":4},"action":"insert","lines":["# "]},{"start":{"row":21,"column":2},"end":{"row":21,"column":4},"action":"insert","lines":["# "]},{"start":{"row":22,"column":2},"end":{"row":22,"column":4},"action":"insert","lines":["# "]},{"start":{"row":23,"column":2},"end":{"row":23,"column":4},"action":"insert","lines":["# "]},{"start":{"row":24,"column":2},"end":{"row":24,"column":4},"action":"insert","lines":["# "]},{"start":{"row":25,"column":2},"end":{"row":25,"column":4},"action":"insert","lines":["# "]},{"start":{"row":26,"column":2},"end":{"row":26,"column":4},"action":"insert","lines":["# "]},{"start":{"row":27,"column":2},"end":{"row":27,"column":4},"action":"insert","lines":["# "]},{"start":{"row":28,"column":2},"end":{"row":28,"column":4},"action":"insert","lines":["# "]},{"start":{"row":29,"column":2},"end":{"row":29,"column":4},"action":"insert","lines":["# "]},{"start":{"row":30,"column":2},"end":{"row":30,"column":4},"action":"insert","lines":["# "]},{"start":{"row":31,"column":2},"end":{"row":31,"column":4},"action":"insert","lines":["# "]},{"start":{"row":32,"column":2},"end":{"row":32,"column":4},"action":"insert","lines":["# "]},{"start":{"row":33,"column":2},"end":{"row":33,"column":4},"action":"insert","lines":["# "]},{"start":{"row":34,"column":2},"end":{"row":34,"column":4},"action":"insert","lines":["# "]}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :users",""],"id":5,"ignore":true}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :members",""],"id":6,"ignore":true}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["  devise_for :admins",""],"id":7,"ignore":true}],[{"start":{"row":3,"column":19},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":2},"end":{"row":5,"column":3},"action":"insert","lines":["r"]},{"start":{"row":5,"column":3},"end":{"row":5,"column":4},"action":"insert","lines":["o"]},{"start":{"row":5,"column":4},"end":{"row":5,"column":5},"action":"insert","lines":["o"]},{"start":{"row":5,"column":5},"end":{"row":5,"column":6},"action":"insert","lines":["t"]}],[{"start":{"row":5,"column":6},"end":{"row":5,"column":7},"action":"insert","lines":[" "],"id":9},{"start":{"row":5,"column":7},"end":{"row":5,"column":8},"action":"insert","lines":["t"]},{"start":{"row":5,"column":8},"end":{"row":5,"column":9},"action":"insert","lines":["o"]},{"start":{"row":5,"column":9},"end":{"row":5,"column":10},"action":"insert","lines":[":"]}],[{"start":{"row":5,"column":10},"end":{"row":5,"column":11},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"insert","lines":["()"],"id":11}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"remove","lines":["()"],"id":12}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"insert","lines":["''"],"id":13}],[{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"insert","lines":["h"],"id":14},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["o"]},{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["m"]},{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"insert","lines":["e"]},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"insert","lines":["s"]}],[{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"insert","lines":["#"],"id":15},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"insert","lines":["t"]},{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"insert","lines":["o"]},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"insert","lines":["p"]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "],"id":16}],[{"start":{"row":5,"column":22},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":17},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["r"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"insert","lines":["e"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["s"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":["o"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["u"]}],[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["r"],"id":18},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["c"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["e"]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["s"]}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":[" "],"id":19},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":[":"],"id":20},{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":[" "]}],[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":[" "],"id":21},{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":[":"]}],[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"remove","lines":[":"],"id":22},{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"remove","lines":[" "]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"remove","lines":["s"]},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"remove","lines":["e"]},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"remove","lines":["c"]},{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"remove","lines":["r"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"remove","lines":["u"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"remove","lines":["o"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["s"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"remove","lines":["e"]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"remove","lines":["r"]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":5,"column":22},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":23}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":22},"end":{"row":5,"column":22},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":2,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1633267109757,"hash":"5d166963a4e4f00fae1999ef67608c652f45222d"}