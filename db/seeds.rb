# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

buildings = [
  {name: "ЗАО АрхитектУтиль Проф"},
  {name: "ЗАО МясВолокно"},
  {name: "ОАО ГосКран"},
  {name: "ОАО ТрубДизель"},
  {name: "ЗАО ВторРесурсПродукт"},
  {name: "ЗАО БухПереработка Фактор"},
  {name: "ЗАО МясУтилизация"},
  {name: "ООО ОбувьОбработка"},
  {name: "ЗАО ВояжМонтаж Технология"},
  {name: "ЗАО ВоенФабрика"}
]
if Building.count.eql?(0)
  puts "Creating Buildings"
  buildings.each do |building|
    puts "#{building[:name]}"
    Building.create name: building[:name]
  end
end
rooms = [
  {type: "office", area: 1300.0},
  {type: "office", area: 330.0},
  {type: "office", area: 447.0},
  {type: "office", area: 900.0},
  {type: "warehouse", area: 1349.0},
  {type: "retail", area: 1044.0},
  {type: "warehouse", area: 1368.0},
  {type: "office", area: 14000.0},
  {type: "warehouse", area: 535.0},
  {type: "office", area: 500.0},
  {type: "retail", area: 1198.0},
  {type: "retail", area: 488.0},
  {type: "office", area: 350.0},
  {type: "warehouse", area: 1340.0},
  {type: "warehouse", area: 1074.0},
  {type: "office", area: 202.0},
  {type: "warehouse", area: 932.0},
  {type: "office", area: 70.0},
  {type: "office", area: 871.0},
  {type: "office", area: 1481.0}
]
if Room.count.eql?(0)
  puts "Creating Rooms"
  building_ids = Building.pluck(:id)
  rooms.each do |room|
    puts "#{room[:type]}"
    r = Room.create area: room[:area], type: room[:type], building_id: building_ids.sample
    DealInfo.create deal_infoable: r, offers_attributes: [{cost: (1000..5000).to_a.sample / 100 * 100 }]
  end
end
