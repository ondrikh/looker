view: staging63bd613af160a {
  sql_table_name: "WORKSPACE_233686783"."staging63bd613af160a"
    ;;

  dimension: allergens {
    type: number
    sql: ${TABLE}."Allergens" ;;
  }

  dimension: allergens_target {
    type: number
    sql: ${TABLE}."Allergens_Target" ;;
  }

  dimension: allergens_traces {
    type: number
    sql: ${TABLE}."Allergens_Traces" ;;
  }

  dimension: allergens_traces_target {
    type: number
    sql: ${TABLE}."Allergens_Traces_Target" ;;
  }

  dimension: allergens_traces_value {
    type: string
    sql: ${TABLE}."Allergens_Traces_Value" ;;
  }

  dimension: allergens_value {
    type: string
    sql: ${TABLE}."Allergens_Value" ;;
  }

  dimension: billing_unit {
    type: number
    sql: ${TABLE}."Billing_Unit" ;;
  }

  dimension: billing_unit_target {
    type: number
    sql: ${TABLE}."Billing_Unit_Target" ;;
  }

  dimension: billing_unit_value {
    type: string
    sql: ${TABLE}."Billing_Unit_Value" ;;
  }

  dimension: brand_name {
    type: number
    sql: ${TABLE}."Brand_Name" ;;
  }

  dimension: brand_name_target {
    type: number
    sql: ${TABLE}."Brand_Name_Target" ;;
  }

  dimension: brand_name_value {
    type: string
    sql: ${TABLE}."Brand_Name_Value" ;;
  }

  dimension: carton_gross_weight {
    type: number
    sql: ${TABLE}."Carton_Gross_Weight" ;;
  }

  dimension: carton_gross_weight_target {
    type: number
    sql: ${TABLE}."Carton_Gross_Weight_Target" ;;
  }

  dimension: carton_gross_weight_value {
    type: string
    sql: ${TABLE}."Carton_Gross_Weight_Value" ;;
  }

  dimension: carton_height {
    type: number
    sql: ${TABLE}."Carton_Height" ;;
  }

  dimension: carton_height_target {
    type: number
    sql: ${TABLE}."Carton_Height_Target" ;;
  }

  dimension: carton_height_value {
    type: string
    sql: ${TABLE}."Carton_Height_Value" ;;
  }

  dimension: carton_length {
    type: number
    sql: ${TABLE}."Carton_Length" ;;
  }

  dimension: carton_length_target {
    type: number
    sql: ${TABLE}."Carton_Length_Target" ;;
  }

  dimension: carton_length_value {
    type: string
    sql: ${TABLE}."Carton_Length_Value" ;;
  }

  dimension: carton_netto_weight {
    type: number
    sql: ${TABLE}."Carton_Netto_Weight" ;;
  }

  dimension: carton_netto_weight_target {
    type: number
    sql: ${TABLE}."Carton_Netto_Weight_Target" ;;
  }

  dimension: carton_netto_weight_value {
    type: string
    sql: ${TABLE}."Carton_Netto_Weight_Value" ;;
  }

  dimension: carton_width {
    type: number
    sql: ${TABLE}."Carton_Width" ;;
  }

  dimension: carton_width_target {
    type: number
    sql: ${TABLE}."Carton_Width_Target" ;;
  }

  dimension: carton_width_value {
    type: string
    sql: ${TABLE}."Carton_Width_Value" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: country_of_origin {
    type: number
    sql: ${TABLE}."Country_of_origin" ;;
  }

  dimension: country_of_origin_target {
    type: number
    sql: ${TABLE}."Country_of_origin_Target" ;;
  }

  dimension: country_of_origin_value {
    type: string
    sql: ${TABLE}."Country_of_origin_Value" ;;
  }

  dimension: currency {
    type: number
    sql: ${TABLE}."Currency" ;;
  }

  dimension: currency_target {
    type: number
    sql: ${TABLE}."Currency_Target" ;;
  }

  dimension: currency_value {
    type: string
    sql: ${TABLE}."Currency_Value" ;;
  }

  dimension: deleted {
    type: string
    sql: ${TABLE}."deleted" ;;
  }

  dimension: description {
    type: number
    sql: ${TABLE}."Description" ;;
  }

  dimension: description_html {
    type: number
    sql: ${TABLE}."Description_HTML" ;;
  }

  dimension: description_html_target {
    type: number
    sql: ${TABLE}."Description_HTML_Target" ;;
  }

  dimension: description_html_value {
    type: string
    sql: ${TABLE}."Description_HTML_Value" ;;
  }

  dimension: description_target {
    type: number
    sql: ${TABLE}."Description_Target" ;;
  }

  dimension: description_value {
    type: string
    sql: ${TABLE}."Description_Value" ;;
  }

  dimension: e_codes {
    type: number
    sql: ${TABLE}."E_Codes" ;;
  }

  dimension: e_codes_target {
    type: number
    sql: ${TABLE}."E_Codes_Target" ;;
  }

  dimension: e_codes_value {
    type: string
    sql: ${TABLE}."E_Codes_Value" ;;
  }

  dimension: ean_carton {
    type: number
    sql: ${TABLE}."EAN_Carton" ;;
  }

  dimension: ean_carton_target {
    type: number
    sql: ${TABLE}."EAN_Carton_Target" ;;
  }

  dimension: ean_carton_value {
    type: string
    sql: ${TABLE}."EAN_Carton_Value" ;;
  }

  dimension: ean_piece {
    type: number
    sql: ${TABLE}."EAN_Piece" ;;
  }

  dimension: ean_piece_target {
    type: number
    sql: ${TABLE}."EAN_Piece_Target" ;;
  }

  dimension: ean_piece_value {
    type: string
    sql: ${TABLE}."EAN_Piece_Value" ;;
  }

  dimension: ean_type_piece {
    type: number
    sql: ${TABLE}."EAN_Type_Piece" ;;
  }

  dimension: ean_type_piece_target {
    type: number
    sql: ${TABLE}."EAN_Type_Piece_Target" ;;
  }

  dimension: ean_type_piece_value {
    type: string
    sql: ${TABLE}."EAN_Type_Piece_Value" ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}."enabled" ;;
  }

  dimension: food_item {
    type: string
    sql: ${TABLE}."food_item" ;;
  }

  dimension: guaranteed_durability {
    type: number
    sql: ${TABLE}."Guaranteed_Durability" ;;
  }

  dimension: guaranteed_durability_target {
    type: number
    sql: ${TABLE}."Guaranteed_Durability_Target" ;;
  }

  dimension: guaranteed_durability_value {
    type: string
    sql: ${TABLE}."Guaranteed_Durability_Value" ;;
  }

  dimension: ingredients {
    type: number
    sql: ${TABLE}."Ingredients" ;;
  }

  dimension: ingredients_target {
    type: number
    sql: ${TABLE}."Ingredients_Target" ;;
  }

  dimension: ingredients_value {
    type: string
    sql: ${TABLE}."Ingredients_Value" ;;
  }

  dimension: intrastat_info {
    type: number
    sql: ${TABLE}."Intrastat_Info" ;;
  }

  dimension: intrastat_info_target {
    type: number
    sql: ${TABLE}."Intrastat_Info_Target" ;;
  }

  dimension: intrastat_info_value {
    type: string
    sql: ${TABLE}."Intrastat_Info_Value" ;;
  }

  dimension: keywords {
    type: number
    sql: ${TABLE}."Keywords" ;;
  }

  dimension: keywords_target {
    type: number
    sql: ${TABLE}."Keywords_Target" ;;
  }

  dimension: keywords_value {
    type: string
    sql: ${TABLE}."Keywords_Value" ;;
  }

  dimension: l1_category_name {
    type: number
    sql: ${TABLE}."L1_Category_Name" ;;
  }

  dimension: l1_category_name_filter {
    type: string
    sql: ${TABLE}."L1_category_name_Filter" ;;
  }

  dimension: l1_category_name_target {
    type: number
    sql: ${TABLE}."L1_Category_Name_Target" ;;
  }

  dimension: l1_category_name_value {
    type: string
    sql: ${TABLE}."L1_Category_Name_Value" ;;
  }

  dimension: l2_category_name {
    type: number
    sql: ${TABLE}."L2_Category_Name" ;;
  }

  dimension: l2_category_name_filter {
    type: string
    sql: ${TABLE}."L2_category_name_Filter" ;;
  }

  dimension: l2_category_name_target {
    type: number
    sql: ${TABLE}."L2_Category_Name_Target" ;;
  }

  dimension: l2_category_name_value {
    type: string
    sql: ${TABLE}."L2_Category_Name_Value" ;;
  }

  dimension: l3_category_name {
    type: number
    sql: ${TABLE}."L3_Category_Name" ;;
  }

  dimension: l3_category_name_filter {
    type: string
    sql: ${TABLE}."L3_category_name_Filter" ;;
  }

  dimension: l3_category_name_target {
    type: number
    sql: ${TABLE}."L3_Category_Name_Target" ;;
  }

  dimension: l3_category_name_value {
    type: string
    sql: ${TABLE}."L3_Category_Name_Value" ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}."Level" ;;
  }

  dimension: level_target {
    type: number
    sql: ${TABLE}."Level_Target" ;;
  }

  dimension: level_value {
    type: string
    sql: ${TABLE}."Level_Value" ;;
  }

  dimension: manufacturer_address {
    type: number
    sql: ${TABLE}."Manufacturer_Address" ;;
  }

  dimension: manufacturer_address_target {
    type: number
    sql: ${TABLE}."Manufacturer_Address_Target" ;;
  }

  dimension: manufacturer_address_value {
    type: string
    sql: ${TABLE}."Manufacturer_Address_Value" ;;
  }

  dimension: manufacturer_name {
    type: number
    sql: ${TABLE}."Manufacturer_Name" ;;
  }

  dimension: manufacturer_name_target {
    type: number
    sql: ${TABLE}."Manufacturer_Name_Target" ;;
  }

  dimension: manufacturer_name_value {
    type: string
    sql: ${TABLE}."Manufacturer_Name_Value" ;;
  }

  dimension: max_temperature {
    type: number
    sql: ${TABLE}."Max_Temperature" ;;
  }

  dimension: max_temperature_target {
    type: number
    sql: ${TABLE}."Max_Temperature_Target" ;;
  }

  dimension: max_temperature_value {
    type: string
    sql: ${TABLE}."Max_Temperature_Value" ;;
  }

  dimension: min_temperature {
    type: number
    sql: ${TABLE}."Min_Temperature" ;;
  }

  dimension: min_temperature_target {
    type: number
    sql: ${TABLE}."Min_Temperature_Target" ;;
  }

  dimension: min_temperature_value {
    type: string
    sql: ${TABLE}."Min_Temperature_Value" ;;
  }

  dimension: nutrition_carbohydrates {
    type: number
    sql: ${TABLE}."Nutrition_Carbohydrates" ;;
  }

  dimension: nutrition_carbohydrates_target {
    type: number
    sql: ${TABLE}."Nutrition_Carbohydrates_Target" ;;
  }

  dimension: nutrition_carbohydrates_value {
    type: string
    sql: ${TABLE}."Nutrition_Carbohydrates_Value" ;;
  }

  dimension: nutrition_energy_k_cal {
    type: number
    sql: ${TABLE}."Nutrition_Energy_kCal" ;;
  }

  dimension: nutrition_energy_k_cal_target {
    type: number
    sql: ${TABLE}."Nutrition_Energy_kCal_Target" ;;
  }

  dimension: nutrition_energy_k_cal_value {
    type: string
    sql: ${TABLE}."Nutrition_Energy_kCal_Value" ;;
  }

  dimension: nutrition_energy_k_j {
    type: number
    sql: ${TABLE}."Nutrition_Energy_kJ" ;;
  }

  dimension: nutrition_energy_k_j_target {
    type: number
    sql: ${TABLE}."Nutrition_Energy_kJ_Target" ;;
  }

  dimension: nutrition_energy_k_j_value {
    type: string
    sql: ${TABLE}."Nutrition_Energy_kJ_Value" ;;
  }

  dimension: nutrition_fats {
    type: number
    sql: ${TABLE}."Nutrition_Fats" ;;
  }

  dimension: nutrition_fats_target {
    type: number
    sql: ${TABLE}."Nutrition_Fats_Target" ;;
  }

  dimension: nutrition_fats_value {
    type: string
    sql: ${TABLE}."Nutrition_Fats_Value" ;;
  }

  dimension: nutrition_fiber {
    type: number
    sql: ${TABLE}."Nutrition_Fiber" ;;
  }

  dimension: nutrition_fiber_target {
    type: number
    sql: ${TABLE}."Nutrition_Fiber_Target" ;;
  }

  dimension: nutrition_fiber_value {
    type: string
    sql: ${TABLE}."Nutrition_Fiber_Value" ;;
  }

  dimension: nutrition_proteins {
    type: number
    sql: ${TABLE}."Nutrition_Proteins" ;;
  }

  dimension: nutrition_proteins_target {
    type: number
    sql: ${TABLE}."Nutrition_Proteins_Target" ;;
  }

  dimension: nutrition_proteins_value {
    type: string
    sql: ${TABLE}."Nutrition_Proteins_Value" ;;
  }

  dimension: nutrition_salt {
    type: number
    sql: ${TABLE}."Nutrition_Salt" ;;
  }

  dimension: nutrition_salt_target {
    type: number
    sql: ${TABLE}."Nutrition_Salt_Target" ;;
  }

  dimension: nutrition_salt_value {
    type: string
    sql: ${TABLE}."Nutrition_Salt_Value" ;;
  }

  dimension: nutrition_sf_acids {
    type: number
    sql: ${TABLE}."Nutrition_SF_Acids" ;;
  }

  dimension: nutrition_sf_acids_target {
    type: number
    sql: ${TABLE}."Nutrition_SF_Acids_Target" ;;
  }

  dimension: nutrition_sf_acids_value {
    type: string
    sql: ${TABLE}."Nutrition_SF_Acids_Value" ;;
  }

  dimension: nutrition_sugars {
    type: number
    sql: ${TABLE}."Nutrition_Sugars" ;;
  }

  dimension: nutrition_sugars_target {
    type: number
    sql: ${TABLE}."Nutrition_Sugars_Target" ;;
  }

  dimension: nutrition_sugars_value {
    type: string
    sql: ${TABLE}."Nutrition_Sugars_Value" ;;
  }

  dimension: piece_gross_weight {
    type: number
    sql: ${TABLE}."Piece_Gross_Weight" ;;
  }

  dimension: piece_gross_weight_target {
    type: number
    sql: ${TABLE}."Piece_Gross_Weight_Target" ;;
  }

  dimension: piece_gross_weight_value {
    type: string
    sql: ${TABLE}."Piece_Gross_Weight_Value" ;;
  }

  dimension: piece_height {
    type: number
    sql: ${TABLE}."Piece_Height" ;;
  }

  dimension: piece_height_target {
    type: number
    sql: ${TABLE}."Piece_Height_Target" ;;
  }

  dimension: piece_height_value {
    type: string
    sql: ${TABLE}."Piece_Height_Value" ;;
  }

  dimension: piece_length {
    type: number
    sql: ${TABLE}."Piece_Length" ;;
  }

  dimension: piece_length_target {
    type: number
    sql: ${TABLE}."Piece_Length_Target" ;;
  }

  dimension: piece_length_value {
    type: string
    sql: ${TABLE}."Piece_Length_Value" ;;
  }

  dimension: piece_netto_weight {
    type: number
    sql: ${TABLE}."Piece_Netto_Weight" ;;
  }

  dimension: piece_netto_weight_target {
    type: number
    sql: ${TABLE}."Piece_Netto_Weight_Target" ;;
  }

  dimension: piece_netto_weight_value {
    type: string
    sql: ${TABLE}."Piece_Netto_Weight_Value" ;;
  }

  dimension: piece_width {
    type: number
    sql: ${TABLE}."Piece_Width" ;;
  }

  dimension: piece_width_target {
    type: number
    sql: ${TABLE}."Piece_Width_Target" ;;
  }

  dimension: piece_width_value {
    type: string
    sql: ${TABLE}."Piece_Width_Value" ;;
  }

  dimension: pieces_in_carton {
    type: number
    sql: ${TABLE}."Pieces_In_Carton" ;;
  }

  dimension: pieces_in_carton_target {
    type: number
    sql: ${TABLE}."Pieces_In_Carton_Target" ;;
  }

  dimension: pieces_in_carton_value {
    type: string
    sql: ${TABLE}."Pieces_In_Carton_Value" ;;
  }

  dimension: pieces_in_layer {
    type: number
    sql: ${TABLE}."Pieces_In_Layer" ;;
  }

  dimension: pieces_in_layer_target {
    type: number
    sql: ${TABLE}."Pieces_In_Layer_Target" ;;
  }

  dimension: pieces_in_layer_value {
    type: string
    sql: ${TABLE}."Pieces_In_Layer_Value" ;;
  }

  dimension: pieces_in_pallet {
    type: number
    sql: ${TABLE}."Pieces_In_Pallet" ;;
  }

  dimension: pieces_in_pallet_target {
    type: number
    sql: ${TABLE}."Pieces_In_Pallet_Target" ;;
  }

  dimension: pieces_in_pallet_value {
    type: string
    sql: ${TABLE}."Pieces_In_Pallet_Value" ;;
  }

  dimension: primary_supplier_id {
    type: number
    sql: ${TABLE}."Primary_Supplier_Id" ;;
  }

  dimension: primary_supplier_id_target {
    type: number
    value_format_name: id
    sql: ${TABLE}."Primary_Supplier_Id_Target" ;;
  }

  dimension: primary_supplier_id_value {
    type: string
    sql: ${TABLE}."Primary_Supplier_Id_Value" ;;
  }

  dimension: primary_supplier_name {
    type: number
    sql: ${TABLE}."Primary_Supplier_Name" ;;
  }

  dimension: primary_supplier_name_target {
    type: number
    sql: ${TABLE}."Primary_Supplier_Name_Target" ;;
  }

  dimension: primary_supplier_name_value {
    type: string
    sql: ${TABLE}."Primary_Supplier_Name_Value" ;;
  }

  dimension: product_name {
    type: number
    sql: ${TABLE}."Product_Name" ;;
  }

  dimension: product_name_en {
    type: number
    sql: ${TABLE}."Product_Name_EN" ;;
  }

  dimension: product_name_en_target {
    type: number
    sql: ${TABLE}."Product_Name_EN_Target" ;;
  }

  dimension: product_name_en_value {
    type: string
    sql: ${TABLE}."Product_Name_EN_Value" ;;
  }

  dimension: product_name_target {
    type: number
    sql: ${TABLE}."Product_Name_Target" ;;
  }

  dimension: product_name_value {
    type: string
    sql: ${TABLE}."Product_Name_Value" ;;
  }

  dimension: product_unique_id {
    type: string
    sql: ${TABLE}."product_unique_id" ;;
  }

  dimension: recommended_price {
    type: number
    sql: ${TABLE}."Recommended_Price" ;;
  }

  dimension: recommended_price_target {
    type: number
    sql: ${TABLE}."Recommended_Price_Target" ;;
  }

  dimension: recommended_price_value {
    type: string
    sql: ${TABLE}."Recommended_Price_Value" ;;
  }

  dimension: resp_disponent_email {
    type: number
    sql: ${TABLE}."Resp_Disponent_Email" ;;
  }

  dimension: resp_disponent_email_target {
    type: number
    sql: ${TABLE}."Resp_Disponent_Email_Target" ;;
  }

  dimension: resp_disponent_email_value {
    type: string
    sql: ${TABLE}."Resp_Disponent_Email_Value" ;;
  }

  dimension: resp_junior_email {
    type: number
    sql: ${TABLE}."Resp_Junior_Email" ;;
  }

  dimension: resp_junior_email_target {
    type: number
    sql: ${TABLE}."Resp_Junior_Email_Target" ;;
  }

  dimension: resp_junior_email_value {
    type: string
    sql: ${TABLE}."Resp_Junior_Email_Value" ;;
  }

  dimension: resp_senior_email {
    type: number
    sql: ${TABLE}."Resp_Senior_Email" ;;
  }

  dimension: resp_senior_email_target {
    type: number
    sql: ${TABLE}."Resp_Senior_Email_Target" ;;
  }

  dimension: resp_senior_email_value {
    type: string
    sql: ${TABLE}."Resp_Senior_Email_Value" ;;
  }

  dimension_group: snapshot {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."snapshot_date" ;;
  }

  dimension: snapshot_id {
    type: string
    sql: ${TABLE}."snapshot_id" ;;
  }

  dimension: storage {
    type: number
    sql: ${TABLE}."Storage" ;;
  }

  dimension: storage_target {
    type: number
    sql: ${TABLE}."Storage_Target" ;;
  }

  dimension: storage_value {
    type: string
    sql: ${TABLE}."Storage_Value" ;;
  }

  dimension: tax_percentage {
    type: number
    sql: ${TABLE}."Tax_Percentage" ;;
  }

  dimension: tax_percentage_target {
    type: number
    sql: ${TABLE}."Tax_Percentage_Target" ;;
  }

  dimension: tax_percentage_value {
    type: string
    sql: ${TABLE}."Tax_percentage_Value" ;;
  }

  dimension: top_20 {
    type: string
    sql: ${TABLE}."TOP_20" ;;
  }

  dimension: top_5 {
    type: string
    sql: ${TABLE}."TOP_5" ;;
  }

  dimension: unit {
    type: number
    sql: ${TABLE}."Unit" ;;
  }

  dimension: unit_purchase_price_excl_vat {
    type: number
    sql: ${TABLE}."Unit_Purchase_Price_excl_VAT" ;;
  }

  dimension: unit_purchase_price_excl_vat_target {
    type: number
    sql: ${TABLE}."Unit_Purchase_Price_excl_VAT_Target" ;;
  }

  dimension: unit_purchase_price_excl_vat_value {
    type: string
    sql: ${TABLE}."Unit_Purchase_Price_excl_VAT_Value" ;;
  }

  dimension: unit_target {
    type: number
    sql: ${TABLE}."Unit_Target" ;;
  }

  dimension: unit_value {
    type: string
    sql: ${TABLE}."Unit_Value" ;;
  }

  dimension: usage {
    type: number
    sql: ${TABLE}."Usage" ;;
  }

  dimension: usage_target {
    type: number
    sql: ${TABLE}."Usage_Target" ;;
  }

  dimension: usage_value {
    type: string
    sql: ${TABLE}."Usage_Value" ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}."Volume" ;;
  }

  dimension: volume_dm3_carton {
    type: number
    sql: ${TABLE}."volume_dm3_carton" ;;
  }

  dimension: volume_dm3_piece {
    type: number
    sql: ${TABLE}."volume_dm3_piece" ;;
  }

  dimension: volume_target {
    type: number
    sql: ${TABLE}."Volume_Target" ;;
  }

  dimension: volume_value {
    type: string
    sql: ${TABLE}."Volume_Value" ;;
  }

  dimension: warehouse_inventory_unique_id {
    type: string
    sql: ${TABLE}."warehouse_inventory_unique_id" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."warehouse_name" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."warehouse_unique_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      l1_category_name,
      l3_category_name,
      product_name,
      warehouse_name,
      l2_category_name,
      manufacturer_name,
      primary_supplier_name,
      brand_name
    ]
  }
}
