module.exports.config =
    paths:
        public: 'public'

    files:
        javascripts:
            defaultExtension: 'coffee'
            joinTo:
                'static/js/app.js': /^app/
                'static/js/vendor.js': /^vendor/
            order:
                before: [
                    'vendor/scripts/jquery.js'
                ]

        stylesheets:
            defaultExtension: 'css'
            joinTo: 'static/css/app.css'
            order:
                before: [
                    'vendor/styles/normalize.css'
                    'vendor/styles/helpers.css'
                ]

    minify: yes

    server:
        path: 'app.coffee'
        port: 5000
        base: ''
