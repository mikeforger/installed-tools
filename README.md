# Avans ATGM Galaxy Installed Tools

## Requesting Tools in the ATGM Galaxy

Policies are not set in stone and we would be happy to seek feedback and discussions.

Currenty, we encourage everyone to submit tools via PRs to this repo. The tools are losely grouped into several categories based on the yaml files. Please make your changes in the appropriate file and avoid creating a new yaml file unless necessary.

However, we promise a high-quality service to our users and we need to ensure
sustainability of the installed tools. That means that tools are regularly
updated, tested and can be adjusted to new developments.  Therefore, we
encourage everyone to follow the [IUC Guidelines](https://galaxy-iuc-standards.readthedocs.io/en/latest/index.html)
for tool development and have automatic testing enabled via
[CI](https://en.wikipedia.org/wiki/Continuous_integration).

We encourage you to submit your tool to one of the larger community repositories, like

 * [Galaxy Tools maintained by IUC](https://github.com/galaxyproject/tools-iuc)
 * [Björn Grüning repo](https://github.com/bgruening/galaxytools)
 * [Galaxy Proteomics repo](https://github.com/galaxyproteomics/tools-galaxyp)
 * [EI repo](https://github.com/TGAC/earlham-galaxytools)

### Updating an Existing Tool

- Edit the .yaml.lock file to add the latest/specific changeset revision for the tool. You can use `python scripts/update-tool.py --owner <repo-owner> --name <repo-name> <file.yaml.lock>` in order to do this if you just want to add the latest revision.
- Open a pull request

### Requesting a New Tool

- If you just want the latest version:
	- Edit the .yaml file to add name/owner/section
- If you want a specific version:
	- Edit the .yaml file to add name/owner/section
	- Run `make fix`
	- Edit the .yaml.lock to correct the version number.
- Open a pull request
