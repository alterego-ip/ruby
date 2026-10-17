Category.destroy_all
Product.destroy_all

cat_windows = Category.create!(name: "Пластикові вікна")
cat_doors   = Category.create!(name: "Вхідні та міжкімнатні двері")
cat_fittings= Category.create!(name: "Фурнітура та комплектуючі")

Product.create!(name: "Віконний блок Rehau 60 (1300x1400)", sku: "WIN-RH60-STD", price: 4200.0, stock: 12, category: cat_windows)
Product.create!(name: "Балконний блок WDS 500 (2100x1500)", sku: "WIN-WDS-BALK", price: 7800.0, stock: 5, category: cat_windows)
Product.create!(name: "Двері металопластикові вхідні", sku: "DOR-PVX-ENTRY", price: 11500.0, stock: 4, category: cat_doors)
Product.create!(name: "Комплект захисної фурнітури Siegenia", sku: "FIT-SIEG-KIT", price: 1250.0, stock: 25, category: cat_fittings)