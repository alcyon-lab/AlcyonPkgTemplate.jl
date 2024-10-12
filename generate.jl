using PkgTemplates

t = Template(
    user="alcyon-lab",
    authors=["Alcyon Lab"],
    julia=v"1.2.0",
    dir=length(ARGS) > 1 ? ARGS[2] : ".",
    plugins=[
        ProjectFile(; version=v"0.1.0"),
        Tests(; project=true),
        Git(; branch="master"),
        Readme(;),
        License(; name="MIT", path=nothing, destination="LICENSE"),
        Documenter{NoDeploy}(;),
        !TagBot,
        !GitHubActions,
        !CompatHelper,
        !Dependabot
    ],
)

t(ARGS[1])
