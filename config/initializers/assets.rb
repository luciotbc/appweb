# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# setup bower components folder for lookup
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
# fonts
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
# images
Rails.application.config.assets.precompile << /\.(?:png|jpg)$/

# precompile vendor assets
# Rails.application.config.assets.precompile += %w( base.js )
# Rails.application.config.assets.precompile += %w( base.css )

# precompile themes
Rails.application.config.assets.precompile += ['angle/themes/theme-a.css',
                             'angle/themes/theme-b.css',
                             'angle/themes/theme-c.css',
                             'angle/themes/theme-d.css',
                             'angle/themes/theme-e.css',
                             'angle/themes/theme-f.css',
                             'angle/themes/theme-g.css',
                             'angle/themes/theme-h.css'
                            ]
# Controller assets
Rails.application.config.assets.precompile += [
                     # Scripts
                     'charts.js',
                     'dashboard.js',
                     'documentation.js',
                     'elements.js',
                     'extras.js',
                     'forms.js',
                     'maps.js',
                     'multilevel.js',
                     'pages.js',
                     'tables.js',
                     'widgets.js',
                     'blog.js',
                     'ecommerce.js',
                     'forum.js',
                     'base.js',
                     'singleview.js',
                     'home.js',
                     'sindicalizado.js',
                     # Stylesheets
                     'charts.css',
                     'dashboard.css',
                     'documentation.css',
                     'elements.css',
                     'extras.css',
                     'forms.css',
                     'maps.css',
                     'multilevel.css',
                     'pages.css',
                     'tables.css',
                     'widgets.css',
                     'blog.css',
                     'ecommerce.css',
                     'forum.css',
                     'base.css',
                     'singleview.css',
                     'home.css',
                     'sindicalizado.css'
                    ]

