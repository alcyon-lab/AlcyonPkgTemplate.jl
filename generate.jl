using PkgTemplates

t = Template(
    user="alcyon-lab",
    authors=["Alcyon Lab"],
    julia=v"1.2.0",
    plugins=[
        ProjectFile(; version=v"1.0.0"),
        Tests(; project=true),
        Readme(;),
        License(; name="MIT", path=nothing, destination="LICENSE"),
        Documenter{NoDeploy}(;),
        !TagBot
    ],
)

t("MyPackage.jl")
