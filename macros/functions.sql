{%macro margin_percentage(revenue, purchase_cost)%}
{{return ((revenue-purchase_cost)/revenue)*100}}
{%endmacro%}