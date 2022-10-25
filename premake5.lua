project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/".. outputdir .. "/%{prj.name}")
    objdir ("int/".. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter {"system:windows", "configurations:Debug"}
        buildoptions "/MTd"

    filter {"system:windows", "configurations:Release"}
        buildoptions "/MT"
        
    filter {"system:windows", "configurations:Distribution"}
        buildoptions "/MT"