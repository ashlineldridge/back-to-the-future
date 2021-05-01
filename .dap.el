(dap-register-debug-template
  "lldb-native2"
  (list :type "lldb"
        :request "attach"
        :name "lldb-native2"
        :target "bazel-out/darwin-dbg/bin/src/main/main"
        :cwd "/Users/aeldridge/Development/home/cbot"
	:waitFor t))
