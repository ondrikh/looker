view: tibco_shrink {
  sql_table_name: "WORKSPACE_233686783"."tibco_shrink"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: cena_bez_dph {
    type: string
    sql: ${TABLE}."cenaBezDPH" ;;
  }

  dimension: cena_sdph {
    type: string
    sql: ${TABLE}."cenaSDPH" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: date_shrink {
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
    sql: ${TABLE}."date_shrink" ;;
  }

  dimension: duvod {
    type: string
    sql: ${TABLE}."duvod" ;;
  }

  dimension: id_produktu {
    type: string
    sql: ${TABLE}."idProduktu" ;;
  }

  dimension: inventory_id {
    type: string
    sql: ${TABLE}."inventoryId" ;;
  }

  dimension: mesic {
    type: string
    sql: ${TABLE}."mesic" ;;
  }

  dimension: obalove_materialy {
    type: string
    sql: ${TABLE}."obalove_materialy" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: produkt_name {
    type: string
    sql: ${TABLE}."produkt_name" ;;
  }

  dimension: replenished_at {
    type: string
    sql: ${TABLE}."replenished_at" ;;
  }

  dimension: rok {
    type: string
    sql: ${TABLE}."rok" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."sector" ;;
  }

  dimension: shelf {
    type: string
    sql: ${TABLE}."shelf" ;;
  }

  dimension: shelf_deck {
    type: string
    sql: ${TABLE}."shelf_deck" ;;
  }

  dimension: suppliers {
    type: string
    sql: ${TABLE}."suppliers" ;;
  }

  dimension: warehouse_id {
    type: string
    sql: ${TABLE}."warehouse_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, produkt_name]
  }
}
