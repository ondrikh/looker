view: source_description {
  sql_table_name: "WORKSPACE_233686783"."source_description"
    ;;

  dimension: app_name {
    type: string
    sql: ${TABLE}."app_name" ;;
  }

  dimension: be_name {
    type: string
    sql: ${TABLE}."be_name" ;;
  }

  dimension: bi_source {
    type: string
    sql: ${TABLE}."bi_source" ;;
  }

  dimension: category_id_required {
    type: string
    sql: ${TABLE}."category_id_required" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: fe_name {
    type: string
    sql: ${TABLE}."fe_name" ;;
  }

  dimension: incl_product_detail {
    type: string
    sql: ${TABLE}."incl_product_detail" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: product_id_required {
    type: string
    sql: ${TABLE}."product_id_required" ;;
  }

  dimension: recipe_id_required {
    type: string
    sql: ${TABLE}."recipe_id_required" ;;
  }

  measure: count {
    type: count
    drill_fields: [fe_name, be_name, app_name]
  }
}
