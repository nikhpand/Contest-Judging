{"filter":false,"title":"20141117042640_add_admin_to_users.rb","tooltip":"/db/migrate/20141117042640_add_admin_to_users.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":3,"column":0},"end":{"row":3,"column":5}},"text":"  end"},{"action":"removeLines","range":{"start":{"row":1,"column":0},"end":{"row":3,"column":0}},"nl":"\n","lines":["  def change","    add_column :users, :admin, :boolean"]},{"action":"insertText","range":{"start":{"row":1,"column":0},"end":{"row":1,"column":13}},"text":"  def self.up"},{"action":"insertText","range":{"start":{"row":1,"column":13},"end":{"row":2,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":2,"column":0},"end":{"row":7,"column":0}},"lines":["    add_column :users, :admin, :boolean, :default => false","  end","","  def self.down","    remove_column :users, :admin"]},{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":5}},"text":"  end"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":5},"end":{"row":7,"column":5},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1416198436647,"hash":"26bdb7ef43a456cf53fcfdc168fce02d84c45e7d"}