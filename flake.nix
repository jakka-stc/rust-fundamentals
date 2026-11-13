{
  inputs.flakelight-rust.url = "github:accelbread/flakelight-rust";
  outputs =
    { flakelight-rust, ... }:
    flakelight-rust ./. {
      devShell = pkgs: {
        packages = with pkgs; [
          gcc
          python3
          nixd
          nixfmt
        ];
        env.GIT_SSH_COMMAND = "ssh -v -o 'IdentitiesOnly=yes' -i ~/.ssh/id_stc";
      };
    };
}
