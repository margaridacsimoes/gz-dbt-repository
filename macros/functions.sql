{%macro margin_percentage(revenue, purchase_cost)%}
 ROUND((({{revenue}}-{{purchase_cost}})/{{revenue}})*100)
{%endmacro%}