{pkgs, sample ? "provider_counter", ...}: {
    packages = [
        pkgs.curl
        pkgs.gnutar
        pkgs.xz
        pkgs.git
        pkgs.busybox
    ];
    bootstrap = ''
        cp -r ${./sample}/* "$out"
        mkdir "$out"/.idx
        cp ${./dev.nix} "$out"/.idx/dev.nix
        install --mode u+rw ${./dev.nix} "$out"/.idx/dev.nix
    '';
}