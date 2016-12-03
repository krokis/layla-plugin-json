# Layla JSON plugin

Read JSON files directly from your [Layla](//github.com/krokis/layla) code.

## Installation

Install as a dependency of your project with NPM:

~~~ sh
npm install layla-plugin-json --save # or --save-dev
~~~

## Usage

First require the plugin in your stylesheet:

~~~ lay
use 'json'
~~~

Now you can call the `JSON.load` method to read and parse a JSON file and maybe assign the result to a variable:

~~~ lay
use 'json'

$config = JSON.read('./config.json')

body {
  if $config::debug {
    color: red
  }
}
~~~

The plugin will translate JSON types to Layla objects according to the following table:

| JSON type | Layla type  |
| ----------| ----------- |
| `null`    | `Null`      |
| `Boolean` | `Boolean`   |
| `Number`  | `Number`    |
| `String`  | `String`    |
| `Array`   | `List`      |
| `Object`  | `Block`     |

## License

[BSD-like](License.md)
