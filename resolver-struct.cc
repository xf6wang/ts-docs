/// Minimalist version.
struct ResolverConfig : public TSConfigBase {
  struct : public TSConfigBase {
    int style;
    int time;
    int count;
  } round_robin;
  std::vector<std::string> ns;

  /// External load method.
  ts::Errata load(ts::string_view path);
  /// Internal load method.
  ts::Errata loader(LuaState *);
};

/// With meta data for style.
struct ResolverConfig : public TSConfigBase {
  struct Round_Robin_Config : TSConfigBase {
    Round_Robin_Config() : _meta_style(&_META_style) {}

    int style;

    static TsConfigEnumDescriptor _META_style;
    TSConfigEnum<Round_Robin_Config> _meta_style;
    /// ...
  } round_robin;
  /// ...
};
