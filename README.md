# Static Site Builder

## A tool to automate the creation of a static site and the implementation of development tools.

### Workflow

The static site uses [Bootstrap](https://getbootstrap.com), specifically the [grid system](https://getbootstrap.com/docs/4.1/layout/grid/) to achieve a simple responsive single column site. 

The builder also installs effective development tools. [Browsersync](https://browsersync.io) offers a lot of testing functionality; especially useful is the ability to view the website over multiple devices over the local network. [Contrib sass](https://github.com/gruntjs/grunt-contrib-sass) compiles Sass to CSS, and when combined with [Contrib watch](https://github.com/gruntjs/grunt-contrib-watch), the compilation happens automatically on save. Additionally, the site is automatically reloaded whenever any changes are saved.

### Operational use

