class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :customer, null: false # 顧客への外部キー
      t.string :type, null: false # 継承カラム
      t.string :postal_code, null: false # 郵便番号
      t.string :prefecture, null: false # 都道府県
      t.string :city, null: false # 市町村区
      t.string :address1, null: false # 町域、番地など
      t.string :address2, null: false # 建物名、部屋番号など
      t.string :company_name, null: false, default: "" # 会社名
      t.string :division_name, null: false, default: "" # 部署名

      t.timestamps
    end

    add_index :addresses, [ :type, :customer_id ], unique: true
    add_foreign_key :addresses, :customers
  end
end
