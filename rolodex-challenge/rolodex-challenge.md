Last login: Tue Aug  3 15:49:20 on ttys000
learnacademy@LEARNs-MacBook-Air ~ % ls
Desktop		Downloads	Movies		Pictures	Public
Documents	Library		Music		Postman		provision
learnacademy@LEARNs-MacBook-Air ~ % cd desktop
learnacademy@LEARNs-MacBook-Air desktop % ls
charlie-first-repo
countries.sql
database-challenges
for-fun
javascript-challenges
js-fundamentals-challenges
magic8-ball-raul-yan-todd
pig-latin-conrad-and-raul
react-challenge
ruby-challenges
text-based-game-thomas-raul-alfonso
tic-tac-toe-yan-and-raul
treasure-hunt-Echo5Mike
week-1-assessment-Echo5Mike
week-2-assessment-Echo5Mike
week-3-assessment-Echo5Mike
week-4-assessment-Echo5Mike
learnacademy@LEARNs-MacBook-Air desktop % rails new rolodex_challenge -d postgresql -T
      create  
      create  README.md
      create  Rakefile
      create  .ruby-version
      create  config.ru
      create  .gitignore
      create  .gitattributes
      create  Gemfile
         run  git init from "."
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /Users/learnacademy/Desktop/rolodex_challenge/.git/
      create  package.json
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/javascript/channels/consumer.js
      create  app/javascript/channels/index.js
      create  app/javascript/packs/application.js
      create  app/jobs/application_job.rb
      create  app/mailers/application_mailer.rb
      create  app/models/application_record.rb
      create  app/views/layouts/application.html.erb
      create  app/views/layouts/mailer.html.erb
      create  app/views/layouts/mailer.text.erb
      create  app/assets/images
      create  app/assets/images/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  bin/spring
      create  bin/yarn
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/cable.yml
      create  config/puma.rb
      create  config/spring.rb
      create  config/storage.yml
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/application_controller_renderer.rb
      create  config/initializers/assets.rb
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/content_security_policy.rb
      create  config/initializers/cookies_serializer.rb
      create  config/initializers/cors.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/new_framework_defaults_6_1.rb
      create  config/initializers/permissions_policy.rb
      create  config/initializers/wrap_parameters.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/master.key
      append  .gitignore
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/apple-touch-icon-precomposed.png
      create  public/apple-touch-icon.png
      create  public/favicon.ico
      create  public/robots.txt
      create  tmp
      create  tmp/.keep
      create  tmp/pids
      create  tmp/pids/.keep
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor
      create  vendor/.keep
      create  storage
      create  storage/.keep
      create  tmp/storage
      create  tmp/storage/.keep
      remove  config/initializers/cors.rb
      remove  config/initializers/new_framework_defaults_6_1.rb
         run  bundle install
Fetching gem metadata from https://rubygems.org/............
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies......
Fetching rake 13.0.6
Installing rake 13.0.6
Using concurrent-ruby 1.1.9
Using erubi 1.10.0
Using racc 1.5.2
Using crass 1.0.6
Using rack 2.2.3
Using zeitwerk 2.4.2
Using websocket-extensions 0.1.5
Using marcel 1.0.1
Using mini_mime 1.1.0
Using bindex 0.8.1
Using msgpack 1.4.2
Using bundler 2.2.3
Using byebug 11.1.3
Using ffi 1.15.3
Using rb-fsevent 0.11.0
Using method_source 1.0.0
Using pg 1.2.3
Using thor 1.1.0
Using tilt 2.0.10
Using semantic_range 3.0.0
Using spring 2.1.1
Using turbolinks-source 5.2.0
Using minitest 5.14.4
Using i18n 1.8.10
Fetching nio4r 2.5.8
Using tzinfo 2.0.4
Using rack-test 1.1.0
Using websocket-driver 0.7.5
Using mail 2.7.1
Fetching nokogiri 1.12.2 (x86_64-darwin)
Using builder 3.2.4
Using rb-inotify 0.10.1
Using rack-mini-profiler 2.3.2
Using rack-proxy 0.7.0
Using sprockets 4.0.2
Using sassc 2.4.0
Using turbolinks 5.2.1
Using activesupport 6.1.4
Fetching bootsnap 1.7.7
Fetching listen 3.6.0
Installing listen 3.6.0
Installing bootsnap 1.7.7 with native extensions
Installing nio4r 2.5.8 with native extensions
Fetching globalid 0.5.2
Installing globalid 0.5.2
Using activemodel 6.1.4
Using jbuilder 2.11.2
Using activejob 6.1.4
Using activerecord 6.1.4
Installing nokogiri 1.12.2 (x86_64-darwin)
Using rails-dom-testing 2.0.3
Fetching loofah 2.11.0
Installing loofah 2.11.0
Using rails-html-sanitizer 1.3.0
Using actionview 6.1.4
Using actionpack 6.1.4
Using activestorage 6.1.4
Using sprockets-rails 3.2.2
Using railties 6.1.4
Using actionmailbox 6.1.4
Using sassc-rails 2.1.2
Using web-console 4.1.0
Using webpacker 5.4.0
Using sass-rails 6.0.0
Using actiontext 6.1.4
Using actionmailer 6.1.4
Using actioncable 6.1.4
Using rails 6.1.4
Fetching puma 5.4.0
Installing puma 5.4.0 with native extensions
Bundle complete! 14 Gemfile dependencies, 64 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
         run  bundle binstubs bundler
       rails  webpacker:install
      create  config/webpacker.yml
Copying webpack core config
      create  config/webpack
      create  config/webpack/development.js
      create  config/webpack/environment.js
      create  config/webpack/production.js
      create  config/webpack/test.js
Copying postcss.config.js to app root directory
      create  postcss.config.js
Copying babel.config.js to app root directory
      create  babel.config.js
Copying .browserslistrc to app root directory
      create  .browserslistrc
The JavaScript app source directory already exists
       apply  /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/webpacker-5.4.0/lib/install/binstubs.rb
  Copying binstubs
       exist    bin
      create    bin/webpack
      create    bin/webpack-dev-server
      append  .gitignore
Installing all JavaScript dependencies [5.4.0]
         run  yarn add @rails/webpacker@5.4.0 from "."
yarn add v1.22.10
info No lockfile found.
[1/4] 🔍  Resolving packages...
warning @rails/webpacker > webpack > watchpack > watchpack-chokidar2 > chokidar@2.1.8: Chokidar 2 will break on node v14+. Upgrade to chokidar 3 with 15x less dependencies.
warning @rails/webpacker > webpack > watchpack > watchpack-chokidar2 > chokidar > fsevents@1.2.13: fsevents 1 will break on node v14+ and could be using insecure binaries. Upgrade to fsevents 2.
warning @rails/webpacker > webpack > node-libs-browser > url > querystring@0.2.0: The querystring API is considered Legacy. new code should use the URLSearchParams API instead.
warning @rails/webpacker > webpack > micromatch > snapdragon > source-map-resolve > resolve-url@0.2.1: https://github.com/lydell/resolve-url#deprecated
warning @rails/webpacker > webpack > micromatch > snapdragon > source-map-resolve > urix@0.1.0: Please see https://github.com/lydell/urix#deprecated
[2/4] 🚚  Fetching packages...
[3/4] 🔗  Linking dependencies...
[4/4] 🔨  Building fresh packages...
success Saved lockfile.
success Saved 530 new dependencies.
info Direct dependencies
├─ @rails/actioncable@6.1.4
├─ @rails/activestorage@6.1.4
├─ @rails/ujs@6.1.4
├─ @rails/webpacker@5.4.0
└─ turbolinks@5.2.0
info All dependencies
├─ @babel/code-frame@7.14.5
├─ @babel/compat-data@7.15.0
├─ @babel/core@7.15.0
├─ @babel/helper-builder-binary-assignment-operator-visitor@7.14.5
├─ @babel/helper-compilation-targets@7.15.0
├─ @babel/helper-explode-assignable-expression@7.14.5
├─ @babel/helper-get-function-arity@7.14.5
├─ @babel/helper-module-imports@7.14.5
├─ @babel/helper-plugin-utils@7.14.5
├─ @babel/helper-wrap-function@7.14.5
├─ @babel/helpers@7.14.8
├─ @babel/highlight@7.14.5
├─ @babel/plugin-bugfix-v8-spread-parameters-in-optional-chaining@7.14.5
├─ @babel/plugin-proposal-async-generator-functions@7.14.9
├─ @babel/plugin-proposal-class-properties@7.14.5
├─ @babel/plugin-proposal-class-static-block@7.14.5
├─ @babel/plugin-proposal-dynamic-import@7.14.5
├─ @babel/plugin-proposal-export-namespace-from@7.14.5
├─ @babel/plugin-proposal-json-strings@7.14.5
├─ @babel/plugin-proposal-logical-assignment-operators@7.14.5
├─ @babel/plugin-proposal-nullish-coalescing-operator@7.14.5
├─ @babel/plugin-proposal-numeric-separator@7.14.5
├─ @babel/plugin-proposal-object-rest-spread@7.14.7
├─ @babel/plugin-proposal-optional-catch-binding@7.14.5
├─ @babel/plugin-proposal-private-methods@7.14.5
├─ @babel/plugin-proposal-private-property-in-object@7.14.5
├─ @babel/plugin-proposal-unicode-property-regex@7.14.5
├─ @babel/plugin-syntax-class-properties@7.12.13
├─ @babel/plugin-syntax-top-level-await@7.14.5
├─ @babel/plugin-transform-arrow-functions@7.14.5
├─ @babel/plugin-transform-async-to-generator@7.14.5
├─ @babel/plugin-transform-block-scoped-functions@7.14.5
├─ @babel/plugin-transform-block-scoping@7.14.5
├─ @babel/plugin-transform-classes@7.14.9
├─ @babel/plugin-transform-computed-properties@7.14.5
├─ @babel/plugin-transform-destructuring@7.14.7
├─ @babel/plugin-transform-dotall-regex@7.14.5
├─ @babel/plugin-transform-duplicate-keys@7.14.5
├─ @babel/plugin-transform-exponentiation-operator@7.14.5
├─ @babel/plugin-transform-for-of@7.14.5
├─ @babel/plugin-transform-function-name@7.14.5
├─ @babel/plugin-transform-literals@7.14.5
├─ @babel/plugin-transform-member-expression-literals@7.14.5
├─ @babel/plugin-transform-modules-amd@7.14.5
├─ @babel/plugin-transform-modules-commonjs@7.15.0
├─ @babel/plugin-transform-modules-systemjs@7.14.5
├─ @babel/plugin-transform-modules-umd@7.14.5
├─ @babel/plugin-transform-named-capturing-groups-regex@7.14.9
├─ @babel/plugin-transform-new-target@7.14.5
├─ @babel/plugin-transform-object-super@7.14.5
├─ @babel/plugin-transform-property-literals@7.14.5
├─ @babel/plugin-transform-regenerator@7.14.5
├─ @babel/plugin-transform-reserved-words@7.14.5
├─ @babel/plugin-transform-runtime@7.15.0
├─ @babel/plugin-transform-shorthand-properties@7.14.5
├─ @babel/plugin-transform-spread@7.14.6
├─ @babel/plugin-transform-sticky-regex@7.14.5
├─ @babel/plugin-transform-template-literals@7.14.5
├─ @babel/plugin-transform-typeof-symbol@7.14.5
├─ @babel/plugin-transform-unicode-escapes@7.14.5
├─ @babel/plugin-transform-unicode-regex@7.14.5
├─ @babel/preset-env@7.15.0
├─ @babel/preset-modules@0.1.4
├─ @babel/runtime@7.14.8
├─ @babel/traverse@7.15.0
├─ @npmcli/move-file@1.1.2
├─ @rails/actioncable@6.1.4
├─ @rails/activestorage@6.1.4
├─ @rails/ujs@6.1.4
├─ @rails/webpacker@5.4.0
├─ @types/json-schema@7.0.9
├─ @types/node@16.4.12
├─ @types/parse-json@4.0.0
├─ @types/q@1.5.5
├─ @webassemblyjs/floating-point-hex-parser@1.9.0
├─ @webassemblyjs/helper-code-frame@1.9.0
├─ @webassemblyjs/helper-fsm@1.9.0
├─ @webassemblyjs/helper-wasm-section@1.9.0
├─ @webassemblyjs/wasm-edit@1.9.0
├─ @webassemblyjs/wasm-opt@1.9.0
├─ @xtuc/ieee754@1.2.0
├─ acorn@6.4.2
├─ aggregate-error@3.1.0
├─ ajv-errors@1.0.1
├─ ajv-keywords@3.5.2
├─ ajv@6.12.6
├─ ansi-regex@4.1.0
├─ ansi-styles@3.2.1
├─ anymatch@3.1.2
├─ argparse@1.0.10
├─ arr-flatten@1.1.0
├─ asn1.js@5.4.1
├─ assert@1.5.0
├─ assign-symbols@1.0.0
├─ async-each@1.0.3
├─ atob@2.1.2
├─ autoprefixer@9.8.6
├─ babel-loader@8.2.2
├─ babel-plugin-macros@2.8.0
├─ base@0.11.2
├─ base64-js@1.5.1
├─ binary-extensions@2.2.0
├─ bindings@1.5.0
├─ bluebird@3.7.2
├─ boolbase@1.0.0
├─ brace-expansion@1.1.11
├─ braces@2.3.2
├─ brorand@1.1.0
├─ browserify-aes@1.2.0
├─ browserify-cipher@1.0.1
├─ browserify-des@1.0.2
├─ browserify-rsa@4.1.0
├─ browserify-sign@4.2.1
├─ browserify-zlib@0.2.0
├─ buffer-xor@1.0.3
├─ buffer@4.9.2
├─ builtin-status-codes@3.0.0
├─ cache-base@1.0.1
├─ caller-callsite@2.0.0
├─ caller-path@2.0.0
├─ callsites@2.0.0
├─ camelcase@5.3.1
├─ caniuse-lite@1.0.30001248
├─ case-sensitive-paths-webpack-plugin@2.4.0
├─ chokidar@3.5.2
├─ chrome-trace-event@1.0.3
├─ cipher-base@1.0.4
├─ class-utils@0.3.6
├─ clean-stack@2.2.0
├─ cliui@5.0.0
├─ coa@2.0.2
├─ collection-visit@1.0.0
├─ color-convert@1.9.3
├─ color-name@1.1.3
├─ color-string@1.6.0
├─ color@3.2.1
├─ colorette@1.2.2
├─ compression-webpack-plugin@4.0.1
├─ concat-map@0.0.1
├─ concat-stream@1.6.2
├─ console-browserify@1.2.0
├─ constants-browserify@1.0.0
├─ convert-source-map@1.8.0
├─ copy-concurrently@1.0.5
├─ copy-descriptor@0.1.1
├─ core-js-compat@3.16.0
├─ core-js@3.16.0
├─ core-util-is@1.0.2
├─ create-ecdh@4.0.4
├─ create-hmac@1.1.7
├─ cross-spawn@6.0.5
├─ crypto-browserify@3.12.0
├─ css-blank-pseudo@0.1.4
├─ css-color-names@0.0.4
├─ css-declaration-sorter@4.0.1
├─ css-has-pseudo@0.10.0
├─ css-loader@3.6.0
├─ css-prefers-color-scheme@3.1.1
├─ css-select-base-adapter@0.1.1
├─ css-select@2.1.0
├─ css-tree@1.0.0-alpha.37
├─ css-what@3.4.2
├─ cssdb@4.4.0
├─ cssnano-preset-default@4.0.8
├─ cssnano-util-raw-cache@4.0.1
├─ cssnano-util-same-parent@4.0.1
├─ cssnano@4.1.11
├─ csso@4.2.0
├─ cyclist@1.0.1
├─ debug@4.3.2
├─ decamelize@1.2.0
├─ decode-uri-component@0.2.0
├─ des.js@1.0.1
├─ detect-file@1.0.0
├─ diffie-hellman@5.0.3
├─ dom-serializer@0.2.2
├─ domain-browser@1.2.0
├─ domelementtype@1.3.1
├─ domutils@1.7.0
├─ dot-prop@5.3.0
├─ duplexify@3.7.1
├─ electron-to-chromium@1.3.795
├─ emoji-regex@7.0.3
├─ enhanced-resolve@4.5.0
├─ entities@2.2.0
├─ errno@0.1.8
├─ es-abstract@1.18.5
├─ es-to-primitive@1.2.1
├─ escalade@3.1.1
├─ escape-string-regexp@1.0.5
├─ eslint-scope@4.0.3
├─ esprima@4.0.1
├─ esrecurse@4.3.0
├─ estraverse@4.3.0
├─ esutils@2.0.3
├─ events@3.3.0
├─ expand-brackets@2.1.4
├─ expand-tilde@2.0.2
├─ extglob@2.0.4
├─ fast-deep-equal@3.1.3
├─ fast-json-stable-stringify@2.1.0
├─ file-loader@6.2.0
├─ file-uri-to-path@1.0.0
├─ fill-range@4.0.0
├─ findup-sync@3.0.0
├─ flatted@3.2.2
├─ flatten@1.0.3
├─ flush-write-stream@1.1.1
├─ for-in@1.0.2
├─ from2@2.3.0
├─ fs.realpath@1.0.0
├─ fsevents@2.3.2
├─ gensync@1.0.0-beta.2
├─ get-caller-file@2.0.5
├─ get-value@2.0.6
├─ glob-parent@5.1.2
├─ global-modules@2.0.0
├─ global-prefix@3.0.0
├─ has-bigints@1.0.1
├─ has-value@1.0.0
├─ hash.js@1.1.7
├─ hex-color-regex@1.1.0
├─ hmac-drbg@1.0.1
├─ hsl-regex@1.0.0
├─ hsla-regex@1.0.0
├─ https-browserify@1.0.0
├─ icss-utils@4.1.1
├─ ieee754@1.2.1
├─ import-cwd@2.1.0
├─ import-fresh@2.0.0
├─ import-from@2.1.0
├─ import-local@2.0.0
├─ indent-string@4.0.0
├─ infer-owner@1.0.4
├─ inflight@1.0.6
├─ ini@1.3.8
├─ internal-slot@1.0.3
├─ interpret@1.4.0
├─ is-absolute-url@2.1.0
├─ is-accessor-descriptor@1.0.0
├─ is-arrayish@0.2.1
├─ is-bigint@1.0.2
├─ is-binary-path@2.1.0
├─ is-boolean-object@1.1.1
├─ is-callable@1.2.3
├─ is-color-stop@1.1.0
├─ is-core-module@2.5.0
├─ is-data-descriptor@1.0.0
├─ is-date-object@1.0.4
├─ is-descriptor@1.0.2
├─ is-directory@0.3.1
├─ is-extglob@2.1.1
├─ is-fullwidth-code-point@2.0.0
├─ is-glob@4.0.1
├─ is-negative-zero@2.0.1
├─ is-number-object@1.0.5
├─ is-obj@2.0.0
├─ is-plain-obj@1.1.0
├─ is-plain-object@2.0.4
├─ is-regex@1.1.3
├─ is-resolvable@1.1.0
├─ is-string@1.0.6
├─ is-symbol@1.0.4
├─ is-windows@1.0.2
├─ is-wsl@1.1.0
├─ isarray@1.0.0
├─ isexe@2.0.0
├─ jest-worker@26.6.2
├─ js-tokens@4.0.0
├─ jsesc@2.5.2
├─ json-parse-better-errors@1.0.2
├─ json-parse-even-better-errors@2.3.1
├─ json-schema-traverse@0.4.1
├─ kind-of@3.2.2
├─ klona@2.0.4
├─ last-call-webpack-plugin@3.0.0
├─ lines-and-columns@1.1.6
├─ loader-runner@2.4.0
├─ locate-path@3.0.0
├─ lodash.debounce@4.0.8
├─ lodash.get@4.4.2
├─ lodash.has@4.5.2
├─ lodash.memoize@4.1.2
├─ lodash.uniq@4.5.0
├─ lodash@4.17.21
├─ make-dir@3.1.0
├─ map-visit@1.0.0
├─ mdn-data@2.0.4
├─ memory-fs@0.4.1
├─ merge-stream@2.0.0
├─ micromatch@3.1.10
├─ miller-rabin@4.0.1
├─ mini-css-extract-plugin@0.9.0
├─ minimatch@3.0.4
├─ minipass-collect@1.0.2
├─ minipass-flush@1.0.5
├─ minipass-pipeline@1.2.4
├─ minizlib@2.1.2
├─ mississippi@3.0.0
├─ mixin-deep@1.3.2
├─ mkdirp@0.5.5
├─ move-concurrently@1.0.1
├─ ms@2.1.2
├─ nan@2.15.0
├─ nanomatch@1.2.13
├─ neo-async@2.6.2
├─ nice-try@1.0.5
├─ node-libs-browser@2.2.1
├─ node-releases@1.1.73
├─ normalize-path@3.0.0
├─ normalize-range@0.1.2
├─ normalize-url@1.9.1
├─ nth-check@1.0.2
├─ num2fraction@1.2.2
├─ object-assign@4.1.1
├─ object-copy@0.1.0
├─ object-inspect@1.11.0
├─ object.assign@4.1.2
├─ object.getownpropertydescriptors@2.1.2
├─ object.values@1.1.4
├─ optimize-css-assets-webpack-plugin@5.0.8
├─ os-browserify@0.3.0
├─ p-limit@2.3.0
├─ p-locate@3.0.0
├─ p-map@4.0.0
├─ p-try@2.2.0
├─ pako@1.0.11
├─ parallel-transform@1.2.0
├─ parent-module@1.0.1
├─ parse-asn1@5.1.6
├─ parse-json@4.0.0
├─ parse-passwd@1.0.0
├─ pascalcase@0.1.1
├─ path-browserify@0.0.1
├─ path-complete-extname@1.0.0
├─ path-dirname@1.0.2
├─ path-exists@3.0.0
├─ path-is-absolute@1.0.1
├─ path-key@2.0.1
├─ path-parse@1.0.7
├─ path-type@4.0.0
├─ picomatch@2.3.0
├─ pify@2.3.0
├─ pnp-webpack-plugin@1.7.0
├─ posix-character-classes@0.1.1
├─ postcss-attribute-case-insensitive@4.0.2
├─ postcss-calc@7.0.5
├─ postcss-color-functional-notation@2.0.1
├─ postcss-color-gray@5.0.0
├─ postcss-color-hex-alpha@5.0.3
├─ postcss-color-mod-function@3.0.3
├─ postcss-color-rebeccapurple@4.0.1
├─ postcss-colormin@4.0.3
├─ postcss-convert-values@4.0.1
├─ postcss-custom-media@7.0.8
├─ postcss-custom-properties@8.0.11
├─ postcss-custom-selectors@5.1.2
├─ postcss-dir-pseudo-class@5.0.0
├─ postcss-discard-comments@4.0.2
├─ postcss-discard-duplicates@4.0.2
├─ postcss-discard-empty@4.0.1
├─ postcss-discard-overridden@4.0.1
├─ postcss-double-position-gradients@1.0.0
├─ postcss-env-function@2.0.2
├─ postcss-flexbugs-fixes@4.2.1
├─ postcss-focus-visible@4.0.0
├─ postcss-focus-within@3.0.0
├─ postcss-font-variant@4.0.1
├─ postcss-gap-properties@2.0.0
├─ postcss-image-set-function@3.0.1
├─ postcss-import@12.0.1
├─ postcss-initial@3.0.4
├─ postcss-lab-function@2.0.1
├─ postcss-load-config@2.1.2
├─ postcss-loader@3.0.0
├─ postcss-logical@3.0.0
├─ postcss-media-minmax@4.0.0
├─ postcss-merge-longhand@4.0.11
├─ postcss-merge-rules@4.0.3
├─ postcss-minify-font-values@4.0.2
├─ postcss-minify-gradients@4.0.2
├─ postcss-minify-params@4.0.2
├─ postcss-minify-selectors@4.0.2
├─ postcss-modules-extract-imports@2.0.0
├─ postcss-modules-local-by-default@3.0.3
├─ postcss-modules-scope@2.2.0
├─ postcss-modules-values@3.0.0
├─ postcss-nesting@7.0.1
├─ postcss-normalize-charset@4.0.1
├─ postcss-normalize-display-values@4.0.2
├─ postcss-normalize-positions@4.0.2
├─ postcss-normalize-repeat-style@4.0.2
├─ postcss-normalize-string@4.0.2
├─ postcss-normalize-timing-functions@4.0.2
├─ postcss-normalize-unicode@4.0.1
├─ postcss-normalize-url@4.0.1
├─ postcss-normalize-whitespace@4.0.2
├─ postcss-ordered-values@4.1.2
├─ postcss-overflow-shorthand@2.0.0
├─ postcss-page-break@2.0.0
├─ postcss-place@4.0.1
├─ postcss-preset-env@6.7.0
├─ postcss-pseudo-class-any-link@6.0.0
├─ postcss-reduce-initial@4.0.3
├─ postcss-reduce-transforms@4.0.2
├─ postcss-replace-overflow-wrap@3.0.0
├─ postcss-safe-parser@4.0.2
├─ postcss-selector-matches@4.0.0
├─ postcss-selector-not@4.0.1
├─ postcss-svgo@4.0.3
├─ postcss-unique-selectors@4.0.1
├─ prepend-http@1.0.4
├─ process-nextick-args@2.0.1
├─ process@0.11.10
├─ prr@1.0.1
├─ public-encrypt@4.0.3
├─ pump@3.0.0
├─ pumpify@1.5.1
├─ punycode@1.4.1
├─ q@1.5.1
├─ query-string@4.3.4
├─ querystring-es3@0.2.1
├─ querystring@0.2.0
├─ randomfill@1.0.4
├─ read-cache@1.0.0
├─ readable-stream@2.3.7
├─ readdirp@3.6.0
├─ regenerate-unicode-properties@8.2.0
├─ regenerator-runtime@0.13.9
├─ regenerator-transform@0.14.5
├─ regexpu-core@4.7.1
├─ regjsgen@0.5.2
├─ regjsparser@0.6.9
├─ remove-trailing-separator@1.1.0
├─ repeat-element@1.1.4
├─ require-directory@2.1.1
├─ require-main-filename@2.0.0
├─ resolve-cwd@2.0.0
├─ resolve-dir@1.0.1
├─ resolve-url@0.2.1
├─ resolve@1.20.0
├─ ret@0.1.15
├─ rgb-regex@1.0.1
├─ rgba-regex@1.0.0
├─ run-queue@1.0.3
├─ safer-buffer@2.1.2
├─ sass-loader@10.1.1
├─ sass@1.37.5
├─ sax@1.2.4
├─ semver@6.3.0
├─ set-blocking@2.0.0
├─ set-value@2.0.1
├─ setimmediate@1.0.5
├─ shebang-command@1.2.0
├─ shebang-regex@1.0.0
├─ side-channel@1.0.4
├─ simple-swizzle@0.2.2
├─ snapdragon-node@2.1.1
├─ snapdragon-util@3.0.1
├─ sort-keys@1.1.2
├─ source-list-map@2.0.1
├─ source-map-resolve@0.5.3
├─ source-map-support@0.5.19
├─ source-map-url@0.4.1
├─ spark-md5@3.0.1
├─ split-string@3.1.0
├─ sprintf-js@1.0.3
├─ ssri@8.0.1
├─ stable@0.1.8
├─ static-extend@0.1.2
├─ stream-browserify@2.0.2
├─ stream-each@1.2.3
├─ stream-http@2.8.3
├─ strict-uri-encode@1.1.0
├─ string_decoder@1.3.0
├─ string.prototype.trimend@1.0.4
├─ string.prototype.trimstart@1.0.4
├─ strip-ansi@5.2.0
├─ style-loader@1.3.0
├─ stylehacks@4.0.3
├─ svgo@1.3.2
├─ tar@6.1.6
├─ terser-webpack-plugin@4.2.3
├─ terser@5.7.1
├─ through2@2.0.5
├─ timers-browserify@2.0.12
├─ timsort@0.3.0
├─ to-arraybuffer@1.0.1
├─ to-fast-properties@2.0.0
├─ to-object-path@0.3.0
├─ to-regex-range@2.1.1
├─ ts-pnp@1.2.0
├─ tty-browserify@0.0.0
├─ turbolinks@5.2.0
├─ typedarray@0.0.6
├─ unbox-primitive@1.0.1
├─ unicode-canonical-property-names-ecmascript@1.0.4
├─ unicode-match-property-ecmascript@1.0.4
├─ unicode-match-property-value-ecmascript@1.2.0
├─ unicode-property-aliases-ecmascript@1.1.0
├─ union-value@1.0.1
├─ unique-slug@2.0.2
├─ unquote@1.1.1
├─ unset-value@1.0.0
├─ upath@1.2.0
├─ uri-js@4.4.1
├─ urix@0.1.0
├─ url@0.11.0
├─ use@3.1.1
├─ util-deprecate@1.0.2
├─ util.promisify@1.0.1
├─ util@0.11.1
├─ v8-compile-cache@2.3.0
├─ vendors@1.0.4
├─ vm-browserify@1.1.2
├─ watchpack-chokidar2@2.0.1
├─ watchpack@1.7.5
├─ webpack-assets-manifest@3.1.1
├─ webpack-cli@3.3.12
├─ webpack@4.46.0
├─ which-boxed-primitive@1.0.2
├─ which-module@2.0.0
├─ which@1.3.1
├─ worker-farm@1.7.0
├─ wrap-ansi@5.1.0
├─ xtend@4.0.2
├─ yaml@1.10.2
├─ yargs-parser@13.1.2
├─ yargs@13.3.2
└─ yocto-queue@0.1.0
✨  Done in 40.21s.
Installing webpack and webpack-cli as direct dependencies
         run  yarn add webpack@^4.46.0 webpack-cli@^3.3.12 from "."
yarn add v1.22.10
[1/4] 🔍  Resolving packages...
[2/4] 🚚  Fetching packages...
[3/4] 🔗  Linking dependencies...
[4/4] 🔨  Building fresh packages...
success Saved 0 new dependencies.
✨  Done in 6.65s.
Installing dev server for live reloading
         run  yarn add --dev webpack-dev-server from "."
yarn add v1.22.10
[1/4] 🔍  Resolving packages...
warning webpack-dev-server > sockjs > uuid@3.4.0: Please upgrade  to version 7 or higher.  Older versions may use Math.random() in certain circumstances, which is known to be problematic.  See https://v8.dev/blog/math-random for details.
warning webpack-dev-server > webpack-log > uuid@3.4.0: Please upgrade  to version 7 or higher.  Older versions may use Math.random() in certain circumstances, which is known to be problematic.  See https://v8.dev/blog/math-random for details.
[2/4] 🚚  Fetching packages...
[3/4] 🔗  Linking dependencies...
[4/4] 🔨  Building fresh packages...
success Saved lockfile.
success Saved 107 new dependencies.
info Direct dependencies
└─ webpack-dev-server@3.11.2
info All dependencies
├─ @types/glob@7.1.4
├─ @types/minimatch@3.0.5
├─ accepts@1.3.7
├─ ansi-colors@3.2.4
├─ ansi-html@0.0.7
├─ array-flatten@1.1.1
├─ array-union@1.0.2
├─ array-uniq@1.0.3
├─ async-limiter@1.0.1
├─ async@2.6.3
├─ batch@0.6.1
├─ body-parser@1.19.0
├─ bonjour@3.5.0
├─ buffer-indexof@1.1.1
├─ compressible@2.0.18
├─ compression@1.7.4
├─ connect-history-api-fallback@1.6.0
├─ content-disposition@0.5.3
├─ cookie-signature@1.0.6
├─ cookie@0.4.0
├─ deep-equal@1.1.1
├─ default-gateway@4.2.0
├─ del@4.1.1
├─ destroy@1.0.4
├─ detect-node@2.1.0
├─ dns-equal@1.0.0
├─ dns-packet@1.3.4
├─ dns-txt@2.0.2
├─ ee-first@1.1.1
├─ eventemitter3@4.0.7
├─ eventsource@1.1.0
├─ execa@1.0.0
├─ express@4.17.1
├─ finalhandler@1.1.2
├─ follow-redirects@1.14.1
├─ forwarded@0.2.0
├─ get-stream@4.1.0
├─ globby@6.1.0
├─ handle-thing@2.0.1
├─ hpack.js@2.1.6
├─ html-entities@1.4.0
├─ http-deceiver@1.2.7
├─ http-parser-js@0.5.3
├─ http-proxy-middleware@0.19.1
├─ http-proxy@1.18.1
├─ internal-ip@4.3.0
├─ ip-regex@2.1.0
├─ ip@1.1.5
├─ ipaddr.js@1.9.1
├─ is-absolute-url@3.0.3
├─ is-arguments@1.1.0
├─ is-path-cwd@2.2.0
├─ is-path-in-cwd@2.1.0
├─ is-path-inside@2.1.0
├─ is-stream@1.1.0
├─ json3@3.3.3
├─ killable@1.0.1
├─ loglevel@1.7.1
├─ media-typer@0.3.0
├─ merge-descriptors@1.0.1
├─ methods@1.1.2
├─ mime-db@1.49.0
├─ mime@2.5.2
├─ multicast-dns-service-types@1.1.0
├─ multicast-dns@6.2.3
├─ negotiator@0.6.2
├─ node-forge@0.10.0
├─ npm-run-path@2.0.2
├─ object-is@1.1.5
├─ obuf@1.1.2
├─ on-headers@1.0.2
├─ opn@5.5.0
├─ original@1.0.2
├─ p-finally@1.0.0
├─ p-retry@3.0.1
├─ path-is-inside@1.0.2
├─ path-to-regexp@0.1.7
├─ pinkie-promise@2.0.1
├─ pinkie@2.0.4
├─ portfinder@1.0.28
├─ proxy-addr@2.0.7
├─ querystringify@2.2.0
├─ raw-body@2.4.0
├─ regexp.prototype.flags@1.3.1
├─ retry@0.12.0
├─ select-hose@2.0.0
├─ selfsigned@1.10.11
├─ serve-index@1.9.1
├─ serve-static@1.14.1
├─ signal-exit@3.0.3
├─ sockjs-client@1.5.1
├─ sockjs@0.3.21
├─ spdy-transport@3.0.0
├─ spdy@4.0.2
├─ strip-eof@1.0.0
├─ thunky@1.1.0
├─ type-is@1.6.18
├─ unpipe@1.0.0
├─ url-parse@1.5.3
├─ utils-merge@1.0.1
├─ uuid@3.4.0
├─ wbuf@1.7.3
├─ webpack-dev-middleware@3.7.3
├─ webpack-dev-server@3.11.2
├─ websocket-driver@0.7.4
├─ websocket-extensions@0.1.4
└─ ws@6.2.2
✨  Done in 16.72s.
Webpacker successfully installed 🎉 🍰
learnacademy@LEARNs-MacBook-Air desktop % cd rolodex_challenge 
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails db:create
Created database 'rolodex_challenge_development'
Created database 'rolodex_challenge_test'
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails server
=> Booting Puma
=> Rails 6.1.4 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.4.0 (ruby 3.0.0-p0) ("Super Flight")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 17662
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
Started GET "/" for ::1 at 2021-08-04 14:49:36 -0700
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb (Duration: 25.6ms | Allocations: 522)
Completed 200 OK in 70ms (Views: 41.2ms | ActiveRecord: 0.0ms | Allocations: 4215)


rails generate model Person last_name:string first_name:string phone:string
Started GET "/" for ::1 at 2021-08-04 14:56:58 -0700
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb (Duration: 14.6ms | Allocations: 219)
Completed 200 OK in 22ms (Views: 17.8ms | Allocations: 949)


^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2021-08-04 14:57:15 -0700 ===
- Goodbye!
Exiting
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails db:migrate
learnacademy@LEARNs-MacBook-Air rolodex_challenge % code .
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails sever
rails aborted!
Don't know how to build task 'sever' (See the list of available tasks with `rails --tasks`)
/Users/learnacademy/Desktop/rolodex_challenge/bin/rails:5:in `<top (required)>'
/Users/learnacademy/Desktop/rolodex_challenge/bin/spring:10:in `block in <top (required)>'
/Users/learnacademy/Desktop/rolodex_challenge/bin/spring:7:in `<top (required)>'
(See full trace by running task with --trace)
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails server
=> Booting Puma
=> Rails 6.1.4 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.4.0 (ruby 3.0.0-p0) ("Super Flight")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 17870
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
rails db:mirgrate
Started GET "/" for ::1 at 2021-08-04 15:03:26 -0700
   (2.0ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
Processing by Rails::WelcomeController#index as HTML
  Rendering /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /Users/learnacademy/.rvm/gems/ruby-3.0.0/gems/railties-6.1.4/lib/rails/templates/rails/welcome/index.html.erb (Duration: 11.5ms | Allocations: 415)
Completed 200 OK in 38ms (Views: 16.8ms | ActiveRecord: 0.0ms | Allocations: 3068)


rails generate model Person first_name:string last_name:string phone:string
^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2021-08-04 15:08:10 -0700 ===
- Goodbye!
Exiting
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails generate model Person first_name:string last_name:string phone:string
Running via Spring preloader in process 18079
      invoke  active_record
      create    db/migrate/20210804220856_create_people.rb
      create    app/models/person.rb
learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails db:migrate     
== 20210804220856 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0441s
== 20210804220856 CreatePeople: migrated (0.0443s) ============================

learnacademy@LEARNs-MacBook-Air rolodex_challenge % rails c
Running via Spring preloader in process 18131
Loading development environment (Rails 6.1.4)
3.0.0 :001 > Person.create first_name:"raul", last_name:"Marquez", phone:"4427773030"
  TRANSACTION (16.7ms)  BEGIN
  Person Create (1.5ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "raul"], ["last_name", "Marquez"], ["phone", "4427773030"], ["created_at", "2021-08-04 22:15:25.314170"], ["updated_at", "2021-08-04 22:15:25.314170"]]
  TRANSACTION (3.9ms)  COMMIT
 => #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000"> 
3.0.0 :002 > Person.create first_name:"Galadoe", last_name:"Kulee", phone:"4427773031"
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Galadoe"], ["last_name", "Kulee"], ["phone", "4427773031"], ["created_at", "2021-08-04 22:16:40.756818"], ["updated_at", "2021-08-04 22:16:40.756818"]]
  TRANSACTION (26.3ms)  COMMIT
 => #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000"> 
3.0.0 :003 > Person.create first_name:"Jared", last_name:"Thomas", phone:"4427773032"
  TRANSACTION (0.7ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Jared"], ["last_name", "Thomas"], ["phone", "4427773032"], ["created_at", "2021-08-04 22:17:20.660452"], ["updated_at", "2021-08-04 22:17:20.660452"]]
  TRANSACTION (25.5ms)  COMMIT
 => #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000"> 
3.0.0 :004 > Person.create first_name:"Ruben", last_name:"Marquez", phone:"4427773033"
  TRANSACTION (0.6ms)  BEGIN
  Person Create (0.3ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Ruben"], ["last_name", "Marquez"], ["phone", "4427773033"], ["created_at", "2021-08-04 22:18:13.445878"], ["updated_at", "2021-08-04 22:18:13.445878"]]
  TRANSACTION (0.8ms)  COMMIT
 => #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000"> 
3.0.0 :005 > Person.create first_name:"Emma", last_name:"Marquez", phone:"4427773034"
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Emma"], ["last_name", "Marquez"], ["phone", "4427773034"], ["created_at", "2021-08-04 22:18:52.659791"], ["updated_at", "2021-08-04 22:18:52.659791"]]
  TRANSACTION (26.2ms)  COMMIT
 => #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000"> 
3.0.0 :006 > Person.all
  Person Load (0.6ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">]> 
3.0.0 :007 > Person.create first_name:"Sofia", last_name:"Marquez", phone:"4427773035"
  TRANSACTION (9.1ms)  BEGIN
  Person Create (24.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Sofia"], ["last_name", "Marquez"], ["phone", "4427773035"], ["created_at", "2021-08-04 22:21:24.651199"], ["updated_at", "2021-08-04 22:21:24.651199"]]
  TRANSACTION (1.1ms)  COMMIT
 => #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000"> 
3.0.0 :008 > Person.where last_name:"Marquez"
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" = $1 /* loading for inspect */ LIMIT $2  [["last_name", "Marquez"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000">]> 
3.0.0 :009 > Person.last phone:"555555555"
Traceback (most recent call last):
        1: from (irb):9:in `<main>'
TypeError (can't convert Hash into Integer)
3.0.0 :010 > Sofia.phone = "555555555"
Traceback (most recent call last):
        2: from (irb):9:in `<main>'
        1: from (irb):10:in `rescue in <main>'
NameError (uninitialized constant Sofia)
3.0.0 :011 > raul
Traceback (most recent call last):
        2: from (irb):10:in `<main>'
        1: from (irb):11:in `rescue in <main>'
NameError (undefined local variable or method `raul' for main:Object)
3.0.0 :012 > "raul"
 => "raul" 
3.0.0 :013 > "raul".update phone:'5555555555'
Traceback (most recent call last):
        1: from (irb):13:in `<main>'
NoMethodError (undefined method `update' for "raul":String)
3.0.0 :014 > raul.update phone:'5555555555'
Traceback (most recent call last):
        2: from (irb):13:in `<main>'
        1: from (irb):14:in `rescue in <main>'
NameError (undefined local variable or method `raul' for main:Object)
3.0.0 :015 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:21:24.651199000 +0000">]> 
3.0.0 :016 > sofia = person.find 6
Traceback (most recent call last):
        1: from (irb):16:in `<main>'
NameError (undefined local variable or method `person' for main:Object)
3.0.0 :017 > sofia = Person.find 6
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 => #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "4427773035", cre... 
3.0.0 :018 > sofia.phone = "555555555"
 => "555555555" 
3.0.0 :019 > sofia.save
  TRANSACTION (2.7ms)  BEGIN
  Person Update (2.9ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "555555555"], ["updated_at", "2021-08-04 22:40:23.245299"], ["id", 6]]
  TRANSACTION (4.5ms)  COMMIT
 => true 
3.0.0 :020 > Person.all
  Person Load (10.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">]> 
3.0.0 :021 > Person.find 3
  Person Load (0.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000"> 
3.0.0 :022 > Person 3.first_name
Traceback (most recent call last):
        1: from (irb):22:in `<main>'
NoMethodError (undefined method `first_name' for 3:Integer)
3.0.0 :023 > first_name 3
Traceback (most recent call last):
        2: from (irb):22:in `<main>'
        1: from (irb):23:in `rescue in <main>'
NoMethodError (undefined method `first_name' for main:Object)
3.0.0 :024 > Person.first_name 3
Traceback (most recent call last):
        2: from (irb):23:in `<main>'
        1: from (irb):24:in `rescue in <main>'
NoMethodError (undefined method `first_name' for Person:Class)
Did you mean?  sti_name
3.0.0 :025 > Person.first_name.3
Traceback (most recent call last):
SyntaxError ((irb):25: no .<digit> floating literal anymore; put 0 before dot)
Person.first_name.3
                 ^~
3.0.0 :026 > Person.first_name 03
Traceback (most recent call last):
        2: from (irb):25:in `<main>'
        1: from (irb):26:in `rescue in <main>'
NoMethodError (undefined method `first_name' for Person:Class)
Did you mean?  sti_name
3.0.0 :027 > Person.sti_name 
 => "Person" 
3.0.0 :028 > Person.sti_name 3
Traceback (most recent call last):
        1: from (irb):28:in `<main>'
ArgumentError (wrong number of arguments (given 1, expected 0))
3.0.0 :029 > names = Person.where.not(last_name:'Marquez')
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1 /* loading for inspect */ LIMIT $2  [["last_name", "Marquez"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:... 
3.0.0 :030 > names.destroy_all
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1  [["last_name", "Marquez"]]
  TRANSACTION (21.9ms)  BEGIN
  Person Destroy (0.4ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]
  TRANSACTION (0.9ms)  COMMIT
  TRANSACTION (0.2ms)  BEGIN
  Person Destroy (0.4ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 3]]
  TRANSACTION (0.7ms)  COMMIT
 => [#<Person id: 2, first_name: "Galadoe", last_name: "Kulee", phone: "4427773031", created_at: "2021-08-04 22:16:40.756818000 +0000", updated_at: "2021-08-04 22:16:40.756818000 +0000">, #<Person id: 3, first_name: "Jared", last_name: "Thomas", phone: "4427773032", created_at: "2021-08-04 22:17:20.660452000 +0000", updated_at: "2021-08-04 22:17:20.660452000 +0000">] 
3.0.0 :031 > Person.all
  Person Load (8.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 22:15:25.314170000 +0000">, #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">]> 
3.0.0 :032 > Marquez = Person.find
Traceback (most recent call last):
        1: from (irb):32:in `<main>'
ActiveRecord::RecordNotFound (Couldn't find Person without an ID)
3.0.0 :033 > Marquez = Person.find 1
  Person Load (12.2ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773030", created_at: "2021-08-04 22:15:25.314170000 +0000", upda... 
3.0.0 :034 > Marquez_main = Person.find 4
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => #<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", upd... 
3.0.0 :035 > Marquez.update phone: Marquez_main.phone
  TRANSACTION (0.5ms)  BEGIN
  Person Update (5.9ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "4427773033"], ["updated_at", "2021-08-04 23:20:46.417218"], ["id", 1]]
  TRANSACTION (0.5ms)  COMMIT
 => true 
3.0.0 :036 > Person.all
  Person Load (17.5ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">, #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 23:20:46.417218000 +0000">]> 
3.0.0 :037 > Marquez.update phone: "5555555555"
  TRANSACTION (0.2ms)  BEGIN
  Person Update (0.4ms)  UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3  [["phone", "5555555555"], ["updated_at", "2021-08-04 23:22:47.174237"], ["id", 1]]
  TRANSACTION (3.8ms)  COMMIT
 => true 
3.0.0 :038 > Person.all
  Person Load (1.0ms)  SELECT "people".* FROM "people" /* loading for inspect */ LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Person id: 4, first_name: "Ruben", last_name: "Marquez", phone: "4427773033", created_at: "2021-08-04 22:18:13.445878000 +0000", updated_at: "2021-08-04 22:18:13.445878000 +0000">, #<Person id: 5, first_name: "Emma", last_name: "Marquez", phone: "4427773034", created_at: "2021-08-04 22:18:52.659791000 +0000", updated_at: "2021-08-04 22:18:52.659791000 +0000">, #<Person id: 6, first_name: "Sofia", last_name: "Marquez", phone: "555555555", created_at: "2021-08-04 22:21:24.651199000 +0000", updated_at: "2021-08-04 22:40:23.245299000 +0000">, #<Person id: 1, first_name: "raul", last_name: "Marquez", phone: "5555555555", created_at: "2021-08-04 22:15:25.314170000 +0000", updated_at: "2021-08-04 23:22:47.174237000 +0000">]> 
3.0.0 :039 > 
