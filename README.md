# Static Site Builder

## A tool to automate the creation of a static site and the implementation of development tools.

### Workflow

The static site uses [Bootstrap](https://getbootstrap.com), specifically the [grid system](https://getbootstrap.com/docs/4.1/layout/grid/) to achieve a simple responsive single column site. 

The builder also installs effective development tools. [Browsersync](https://browsersync.io) offers a lot of testing functionality; especially useful is the ability to view the website over multiple devices over the local network. [Contrib sass](https://github.com/gruntjs/grunt-contrib-sass) compiles Sass to CSS, and when combined with [Contrib watch](https://github.com/gruntjs/grunt-contrib-watch), the compilation happens automatically on save. Additionally, the site is automatically reloaded whenever any changes are saved.

### Operational use

**Please ensure an empty git repository has been created prior to running the static site builder to use git functionality.**

First download the code locally: 

```bash
git clone https://github.com/Dinkers/Static-Site-Builder.git
```

Then run the make script with `bash`:

```bash
bash make.sh
```

Then fill out the interactive prompt:

```bash
Project name: Static Site Builder Marketing
Author: Kayra Alat
Directory to build in: sites
Github repository url: https://github.com/Dinkers/Static-Site-Builder-Marketing.git
```

The `Github repository url` is optional, and can be left blank.

---

Once the script has been run, the provided git repository will have an initial commit containing the built site, git will be configured locally, and a local development server will be running on [http://localhost:3000](http://localhost:3000). 

The local development server can be started with the following command in the root folder of the website:

```bash
grunt
```

The server can be stopped by pressing ctrl+c on the keyboard.