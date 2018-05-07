# Repository
Repository.new(id: 1, name: 'Accueil', repository_id: nil).save!(validate: false)
Repository.new(id: 2, name: 'Comité de direction', repository_id: 1).save!(validate: false)
Repository.new(id: 3, name: '2016', repository_id: 2).save!(validate: false)
Repository.new(id: 4, name: '2017', repository_id: 2).save!(validate: false)
Repository.new(id: 5, name: '2018', repository_id: 2).save!(validate: false)

SingleFile.new(id: 1, name: 'file_Accueil', repository_id: 1).save!(validate: false)
SingleFile.new(id: 2, name: 'file_Comité de direction', repository_id: 2).save!(validate: false)
SingleFile.new(id: 3, name: 'file_2016', repository_id: 3).save!(validate: false)
SingleFile.new(id: 4, name: 'file_2017', repository_id: 4).save!(validate: false)
SingleFile.new(id: 5, name: 'file_2018', repository_id: 5).save!(validate: false)