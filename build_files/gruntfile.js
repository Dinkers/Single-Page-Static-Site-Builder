module.exports = function(grunt) {

    grunt.initConfig({

        // Watch task config
        watch: {
            sass: {
                files: ['styles/sass/styles.sass'],
                tasks: ['sass']
            }
        },

        // SASS compile task config
        sass: {
            dev: {
                files: {
                    "styles/css/styles.css" : "styles/sass/styles.sass",
                }
            }
        },

        // Browser sync config
        browserSync: {
            default_options: {
                bsFiles: {
                    src: [
                    'styles/css/styles.css',
                    'js/main.js',
                    '*.html'
                    ]
                },
                options: {
                    watchTask: true,
                    server: {
                        baseDir: "./"
                    }
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-browser-sync');

    grunt.registerTask('default', ['browserSync', 'watch']);

};
