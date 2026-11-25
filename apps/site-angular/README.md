# DigitalKhatt

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.0.0.

## Development server

From `apps/site-angular`, run `npm start` and open `http://localhost:4200/`. The app reloads when source files change.

## OpenType reader

Open `/ot` and select New Madina, Old Madina, or IndoPak in the Mushaf menu.
The reader uses browser shaping with the WOFF2 fonts and exposes
the full 400–700 weight range. It shares the edition menu, Surah sidebar and
page navigation with the WASM reader.

The reader uses the three WOFF2 files in `src/assets/fonts/opentype/`.
Run `npm run update:fonts` from `apps/site-angular` to download and verify
those files from the latest Typesetting release. Production builds add a
content hash to their URLs through the `@font-face` rules in `styles.scss`.
The About page links to GitHub’s Latest release for the TTF and WOFF2 downloads.

The native and HarfBuzz justification demos use their own font assets.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `npm run build` to build the project. The build artifacts will be stored in the `dist/` directory. Use `npm run build -- --configuration production` to select the production configuration explicitly.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
