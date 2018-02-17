# UmbrellaFramework
An Umbrella Framework Example

# Answer This Question

[How to add a framework inside another framework (Umbrella Framework)](https://stackoverflow.com/questions/34681435/how-to-add-a-framework-inside-another-framework-umbrella-framework/48495034#48495034)

# Step

if you want to create an un-recommend "UmbrellaFramework", you must do these process step by step, and know details during the compile and link periods

1. Change all sub frameworks Mach-O to Static Library, it means compile this target as Static Library(.a)
2. Manually copy all sub-Framework into UmbrellaFramework during the build phase(Like other answers did)
3. Add "FakeBundleShellScript" to Target "UmbrellaFramework", it makes all sub frameworks package itself resources as bundle to join "UmbrellaFramework"
4. Change the framework load function, you must load the sub-framework resources via path or url, cause it became an bundle, this step means you should have the supreme control of all codes both sub-frameworks & umbrella

# More Details

if you can understand Chinese, more details to make an "UmbrellaFramework" can be obtained from my blog
