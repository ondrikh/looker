view: anaplan_orders_by_hour {
  sql_table_name: "WORKSPACE_233686783"."anaplan_orders_by_hour"
    ;;

  dimension: hour_0 {
    type: string
    sql: ${TABLE}."0" ;;
  }

  dimension: hour_1 {
    type: string
    sql: ${TABLE}."1" ;;
  }

  dimension: hour_10 {
    type: string
    sql: ${TABLE}."10" ;;
  }

  dimension: hour_11 {
    type: string
    sql: ${TABLE}."11" ;;
  }

  dimension: hour_12 {
    type: string
    sql: ${TABLE}."12" ;;
  }

  dimension: hour_13 {
    type: string
    sql: ${TABLE}."13" ;;
  }

  dimension: hour_14 {
    type: string
    sql: ${TABLE}."14" ;;
  }

  dimension: hour_15 {
    type: string
    sql: ${TABLE}."15" ;;
  }

  dimension: hour_16 {
    type: string
    sql: ${TABLE}."16" ;;
  }

  dimension: hour_17 {
    type: string
    sql: ${TABLE}."17" ;;
  }

  dimension: hour_18 {
    type: string
    sql: ${TABLE}."18" ;;
  }

  dimension: hour_19 {
    type: string
    sql: ${TABLE}."19" ;;
  }

  dimension: hour_2 {
    type: string
    sql: ${TABLE}."2" ;;
  }

  dimension: hour_20 {
    type: string
    sql: ${TABLE}."20" ;;
  }

  dimension: hour_21 {
    type: string
    sql: ${TABLE}."21" ;;
  }

  dimension: hour_22 {
    type: string
    sql: ${TABLE}."22" ;;
  }

  dimension: hour_23 {
    type: string
    sql: ${TABLE}."23" ;;
  }

  dimension: hour_3 {
    type: string
    sql: ${TABLE}."3" ;;
  }

  dimension: hour_4 {
    type: string
    sql: ${TABLE}."4" ;;
  }

  dimension: hour_5 {
    type: string
    sql: ${TABLE}."5" ;;
  }

  dimension: hour_6 {
    type: string
    sql: ${TABLE}."6" ;;
  }

  dimension: hour_7 {
    type: string
    sql: ${TABLE}."7" ;;
  }

  dimension: hour_8 {
    type: string
    sql: ${TABLE}."8" ;;
  }

  dimension: hour_9 {
    type: string
    sql: ${TABLE}."9" ;;
  }

  dimension: line_items {
    type: string
    sql: ${TABLE}."Line_Items" ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}."Time" ;;
  }

  dimension: warehouse_unique_id {
    type: string
    sql: ${TABLE}."Warehouse_Unique_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
