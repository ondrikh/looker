view: tibco_replenishment {
  sql_table_name: "WORKSPACE_233686783"."tibco_replenishment"
    ;;

  dimension: cena_naskladneni_bez_dph {
    type: string
    sql: ${TABLE}."cenaNaskladneniBezDPH" ;;
  }

  dimension: cena_naskladneni_bez_dphza_ks {
    type: string
    sql: ${TABLE}."cenaNaskladneniBezDPHZaKs" ;;
  }

  dimension: cena_naskladneni_sdph {
    type: string
    sql: ${TABLE}."cenaNaskladneniSDPH" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: dic {
    type: string
    sql: ${TABLE}."dic" ;;
  }

  dimension: dodavatel {
    type: string
    sql: ${TABLE}."dodavatel" ;;
  }

  dimension: duvod {
    type: string
    sql: ${TABLE}."duvod" ;;
  }

  dimension: id_inventare {
    type: string
    sql: ${TABLE}."idInventare" ;;
  }

  dimension: id_produktu {
    type: string
    sql: ${TABLE}."idProduktu" ;;
  }

  dimension: mesic {
    type: string
    sql: ${TABLE}."mesic" ;;
  }

  dimension: mnozstvi {
    type: string
    sql: ${TABLE}."mnozstvi" ;;
  }

  dimension: nazev {
    type: string
    sql: ${TABLE}."nazev" ;;
  }

  dimension: obalove_materialy {
    type: string
    sql: ${TABLE}."obalove_materialy" ;;
  }

  dimension: rok {
    type: string
    sql: ${TABLE}."rok" ;;
  }

  dimension: sklad {
    type: string
    sql: ${TABLE}."sklad" ;;
  }

  dimension_group: vytvoreno {
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
    sql: ${TABLE}."vytvoreno" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
