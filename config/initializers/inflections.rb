# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
##colocar bien los nombres de las tablas.
#inflect.irregular 'puesto', 'puestos'
#inflect.irregular 'guardia', 'guardias'
	inflect.irregular 'stocks', 'stock'
	inflect.irregular 'controlStock', 'controlStock'
	inflect.irregular 'categoria', 'categorias'
	inflect.irregular 'presupuesto', 'presupuestos'
	inflect.irregular 'puesto_guardia', 'puesto_guardias'
	inflect.irregular 'guardia', 'guardias'
	inflect.irregular 'producto_puesto', 'producto_puestos'
	inflect.irregular 'lista', 'listas'
	
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end


