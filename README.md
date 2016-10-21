# files Cookbook

A very simple cookbook to deploy files placed on the files section of the cookbook and set permissions.

If the file doesn't exist, it is created. If it already exists, it has its permissions set.

If the directory doesn't exist, by default it will be created with the same file permissions and ownership. If it already exists, nothing is changed.

## Requirements

TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
### Platforms

- SandwichOS

### Chef

- Chef 12.0 or later

### Cookbooks

- `toaster` - files needs toaster to brown your bagel.

## Attributes

TODO: List your cookbook attributes here.

e.g.
### files::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['files']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### files::default

TODO: Write usage instructions for each cookbook.

e.g.
Just include `files` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[files]"
  ]
}
```

## Contributing

TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: TODO: List authors
