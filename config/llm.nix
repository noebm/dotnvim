{
  # requires treesitter
  plugins.treesitter.enable = true;

  # enable llm based completions
  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
        ollama = {
          __raw = ''
            function()
              return require('codecompanion.adapters').extend('ollama', {
                  env = {
                      url = "http://127.0.0.1:11434",
                  },
                  schema = {
                      model = {
                          default = 'qwen3-coder:latest';
                          -- default = "llama3.1:8b-instruct-q8_0",
                      },
                      num_ctx = {
                          default = 32768,
                      },
                  },
              })
            end
          '';
        };
      };

      display = {
        action_palette = {
          opts = {
            show_default_prompt_library = true;
          };
          provider = "default";
        };
        chat = {
          window = {
            layout = "vertical";
            opts = {
              breakindent = true;
            };
          };
        };
      };

      opts = {
        log_level = "TRACE";
        send_code = true;
        use_default_actions = true;
        use_default_prompts = true;
      };

      strategies = {
        agent = {
          adapter = "ollama";
        };
        chat = {
          adapter = "ollama";
        };
        inline = {
          adapter = "ollama";
        };
        cmd = {
          adapter = "ollama";
        };
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>CodeCompanion /commit<CR>";
      key = "<leader>cm";
      options = {
        unique = true;
        desc = "Generate commit message via LLM";
      };
    }
    {
      action = "<cmd>CodeCompanionActions<CR>";
      key = "<leader>ca";
      options = {
        unique = true;
        desc = "List all LLM actions";
      };
    }
  ];
}
