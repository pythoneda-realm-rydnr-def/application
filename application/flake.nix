# application/flake.nix
#
# This file packages pythoneda-realm-rydnr/application as a Nix flake.
#
# Copyright (C) 2023-today rydnr's pythoneda-realm-rydnr/application-artifact
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Application layer for pythoneda-realm-rydnr/realm";
  inputs = rec {
    nixos.url = "github:NixOS/nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    pythoneda-realm-rydnr-events = {
      url = "github:pythoneda-realm-rydnr/events-artifact/0.0.1a15?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-realm-rydnr-events-infrastructure = {
      url =
        "github:pythoneda-realm-rydnr/events-infrastructure-artifact/0.0.1a15?dir=events-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-realm-rydnr-events.follows =
        "pythoneda-realm-rydnr-events";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-realm-rydnr-infrastructure = {
      url =
        "github:pythoneda-realm-rydnr/infrastructure-artifact/0.0.1a23?dir=infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-realm-rydnr-events.follows =
        "pythoneda-realm-rydnr-events";
      inputs.pythoneda-realm-rydnr-events-infrastructure.follows =
        "pythoneda-realm-rydnr-events-infrastructure";
      inputs.pythoneda-realm-rydnr-realm.follows =
        "pythoneda-realm-rydnr-realm";
      inputs.pythoneda-shared-artifact-changes-events.follows =
        "pythoneda-shared-artifact-changes-events";
      inputs.pythoneda-shared-artifact-changes-events-infrastructure.follows =
        "pythoneda-shared-artifact-changes-events-infrastructure";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-events-infrastructure.follows =
        "pythoneda-shared-code-requests-events-infrastructure";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-code-requests-jupyterlab.follows =
        "pythoneda-shared-code-requests-jupyterlab";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-realm-rydnr-realm = {
      url = "github:pythoneda-realm-rydnr/realm-artifact/0.0.1a18?dir=realm";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-realm-rydnr-events.follows =
        "pythoneda-realm-rydnr-events";
      inputs.pythoneda-shared-artifact-changes-events.follows =
        "pythoneda-shared-artifact-changes-events";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-shared-artifact-changes-events = {
      url =
        "github:pythoneda-shared-artifact-changes/events-artifact/0.0.1a20?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-artifact-changes-events-infrastructure = {
      url =
        "github:pythoneda-shared-artifact-changes/events-infrastructure-artifact/0.0.1a15?dir=events-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-events.follows =
        "pythoneda-shared-artifact-changes-events";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-artifact-changes-shared = {
      url =
        "github:pythoneda-shared-artifact-changes/shared-artifact/0.0.1a14?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-events = {
      url =
        "github:pythoneda-shared-code-requests/events-artifact/0.0.1a10?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-events-infrastructure = {
      url =
        "github:pythoneda-shared-code-requests/events-infrastructure-artifact/0.0.1a6?dir=events-infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-code-requests-jupyterlab = {
      url =
        "github:pythoneda-shared-code-requests/jupyterlab-artifact/0.0.1a12?dir=jupyterlab";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-shared = {
      url =
        "github:pythoneda-shared-code-requests/shared-artifact/0.0.1a10?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-git-shared = {
      url = "github:pythoneda-shared-git/shared-artifact/0.0.1a20?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-nix-flake-shared = {
      url =
        "github:pythoneda-shared-nix-flake/shared-artifact/0.0.1a7?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-shared-pythoneda-application = {
      url =
        "github:pythoneda-shared-pythoneda/application-artifact/0.0.1a31?dir=application";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.pythoneda-shared-pythoneda-infrastructure.follows =
        "pythoneda-shared-pythoneda-infrastructure";
    };
    pythoneda-shared-pythoneda-banner = {
      url = "github:pythoneda-shared-pythoneda/banner/0.0.1a16";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
    pythoneda-shared-pythoneda-domain = {
      url =
        "github:pythoneda-shared-pythoneda/domain-artifact/0.0.1a42?dir=domain";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
    };
    pythoneda-shared-pythoneda-infrastructure = {
      url =
        "github:pythoneda-shared-pythoneda/infrastructure-artifact/0.0.1a28?dir=infrastructure";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    stringtemplate3 = {
      url = "github:rydnr/nix-flakes/stringtemplate3-3.1?dir=stringtemplate3";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "pythoneda-realm-rydnr";
        repo = "application";
        version = "0.0.1a8";
        sha256 = "sha256-ibrp+o3o/17caLcFUWozeI5YvrIgTcl3/GJwLF3nvxs=";
        pname = "${org}-${repo}";
        pythonpackage = builtins.replaceStrings [ "-" ] [ "." ] pname;
        package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
        entrypoint = "rydnr_app";
        entrypoint-path = "${package}/${entrypoint}.py";
        description = "Application layer for pythoneda-realm-rydnr/realm";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = with pkgs.lib.maintainers;
          [ "rydnr <github@acm-sl.org>" ];
        archRole = "R";
        space = "D";
        layer = "A";
        nixosVersion = builtins.readFile "${nixos}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixos-${nixosVersion}";
        shared = import "${pythoneda-shared-pythoneda-banner}/nix/shared.nix";
        pkgs = import nixos { inherit system; };
        pythoneda-realm-rydnr-application-for = { python
          , pythoneda-realm-rydnr-events
          , pythoneda-realm-rydnr-events-infrastructure
          , pythoneda-realm-rydnr-infrastructure, pythoneda-realm-rydnr-realm
          , pythoneda-shared-artifact-changes-events
          , pythoneda-shared-artifact-changes-events-infrastructure
          , pythoneda-shared-artifact-changes-shared
          , pythoneda-shared-code-requests-events
          , pythoneda-shared-code-requests-events-infrastructure
          , pythoneda-shared-code-requests-jupyterlab
          , pythoneda-shared-code-requests-shared, pythoneda-shared-git-shared
          , pythoneda-shared-nix-flake-shared
          , pythoneda-shared-pythoneda-application
          , pythoneda-shared-pythoneda-banner, pythoneda-shared-pythoneda-domain
          , pythoneda-shared-pythoneda-infrastructure, stringtemplate3 }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
            banner_file = "${package}/rydnr_banner.py";
            banner_class = "RydnrBanner";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTemplateFile = ./pyprojecttoml.template;
            pyprojectTemplate = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              desc = description;
              inherit homepage package pname pythonMajorMinorVersion
                pythonpackage version;
              dbusNext = python.pkgs.dbus-next.version;
              grpcio = python.pkgs.grpcio.version;
              jupyterlab = python.pkgs.jupyterlab.version;
              nbformat = python.pkgs.nbformat.version;
              pythonedaRealmRydnrEvents = pythoneda-realm-rydnr-events.version;
              pythonedaRealmRydnrEventsInfrastructure =
                pythoneda-realm-rydnr-events-infrastructure.version;
              pythonedaRealmRydnrInfrastructure =
                pythoneda-realm-rydnr-infrastructure.version;
              pythonedaRealmRydnrRealm = pythoneda-realm-rydnr-realm.version;
              pythonedaSharedArtifactChangesEvents =
                pythoneda-shared-artifact-changes-events.version;
              pythonedaSharedArtifactChangesEventsInfrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.version;
              pythonedaSharedArtifactChangesShared =
                pythoneda-shared-artifact-changes-shared.version;
              pythonedaSharedCodeRequestsEvents =
                pythoneda-shared-code-requests-events.version;
              pythonedaSharedCodeRequestsEventsInfrastructure =
                pythoneda-shared-code-requests-events-infrastructure.version;
              pythonedaSharedCodeRequestsJupyterlab =
                pythoneda-shared-code-requests-jupyterlab.version;
              pythonedaSharedCodeRequestsShared =
                pythoneda-shared-code-requests-shared.version;
              pythonedaSharedGitShared = pythoneda-shared-git-shared.version;
              pythonedaSharedNixFlakeShared =
                pythoneda-shared-nix-flake-shared.version;
              pythonedaSharedPythonedaApplication =
                pythoneda-shared-pythoneda-application.version;
              pythonedaSharedPythonedaBanner =
                pythoneda-shared-pythoneda-banner.version;
              pythonedaSharedPythonedaDomain =
                pythoneda-shared-pythoneda-domain.version;
              pythonedaSharedPythonedaInfrastructure =
                pythoneda-shared-pythoneda-infrastructure.version;
              requests = python.pkgs.requests.version;
              src = pyprojectTemplateFile;
              stringtemplate3 = stringtemplate3.version;
              unidiff = python.pkgs.unidiff.version;
            };
            bannerTemplateFile =
              "${pythoneda-shared-pythoneda-banner}/templates/banner.py.template";
            bannerTemplate = pkgs.substituteAll {
              project_name = pname;
              file_path = banner_file;
              inherit banner_class org repo;
              tag = version;
              pescio_space = space;
              arch_role = archRole;
              hexagonal_layer = layer;
              python_version = pythonMajorMinorVersion;
              nixpkgs_release = nixpkgsRelease;
              src = bannerTemplateFile;
            };

            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip pkgs.jq poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              dbus-next
              grpcio
              jupyterlab
              nbformat
              pythoneda-realm-rydnr-events
              pythoneda-realm-rydnr-events-infrastructure
              pythoneda-realm-rydnr-infrastructure
              pythoneda-realm-rydnr-realm
              pythoneda-shared-artifact-changes-events
              pythoneda-shared-artifact-changes-events-infrastructure
              pythoneda-shared-artifact-changes-shared
              pythoneda-shared-code-requests-events
              pythoneda-shared-code-requests-events-infrastructure
              pythoneda-shared-code-requests-jupyterlab
              pythoneda-shared-code-requests-shared
              pythoneda-shared-git-shared
              pythoneda-shared-nix-flake-shared
              pythoneda-shared-pythoneda-application
              pythoneda-shared-pythoneda-banner
              pythoneda-shared-pythoneda-domain
              pythoneda-shared-pythoneda-infrastructure
              requests
              stringtemplate3
              unidiff
            ];

            pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              cp -r ${src} .
              sourceRoot=$(ls | grep -v env-vars)
              chmod -R +w $sourceRoot
              cp ${pyprojectTemplate} $sourceRoot/pyproject.toml
              cp ${bannerTemplate} $sourceRoot/${banner_file}
            '';

            postInstall = ''
              pushd /build/$sourceRoot
              for f in $(find . -name '__init__.py'); do
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f;
                fi
              done
              popd
              mkdir $out/dist $out/bin
              cp dist/${wheelName} $out/dist
              jq ".url = \"$out/dist/${wheelName}\"" $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json > temp.json && mv temp.json $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json
              chmod +x $out/lib/python${pythonMajorMinorVersion}/site-packages/${entrypoint-path}
              export _PYTHONEDA_DEPS="$(echo $PYTHONPATH | sed 's : \n g' | wc -l)"
              export _PYTHONEDA_PYTHONEDA_DEPS="$(echo $PYTHONPATH | sed 's : \n g' | grep 'pythoneda' | wc -l)"
              echo '#!/usr/bin/env sh' > $out/bin/${entrypoint}.sh
              echo "echo 'Running ${org}/${repo}-${version} on Python ${python.version}'" >> $out/bin/${entrypoint}.sh
              echo "export PYTHONPATH=$PYTHONPATH" >> $out/bin/${entrypoint}.sh
              echo "${python}/bin/python $out/lib/python${pythonMajorMinorVersion}/site-packages/${entrypoint-path} \$@" >> $out/bin/${entrypoint}.sh
              echo "cat \$0" >> $out/bin/${entrypoint}.sh
              chmod +x $out/bin/${entrypoint}.sh
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        apps = rec {
          default = pythoneda-realm-rydnr-application-default;
          pythoneda-realm-rydnr-application-default =
            pythoneda-realm-rydnr-application-python311;
          pythoneda-realm-rydnr-application-python38 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-realm-rydnr-application-python38;
            inherit entrypoint;
          };
          pythoneda-realm-rydnr-application-python39 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-realm-rydnr-application-python39;
            inherit entrypoint;
          };
          pythoneda-realm-rydnr-application-python310 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-realm-rydnr-application-python310;
            inherit entrypoint;
          };
          pythoneda-realm-rydnr-application-python311 = shared.app-for {
            package =
              self.packages.${system}.pythoneda-realm-rydnr-application-python311;
            inherit entrypoint;
          };
        };
        defaultApp = apps.default;
        defaultPackage = packages.default;
        devShells = rec {
          default = pythoneda-realm-rydnr-application-default;
          pythoneda-realm-rydnr-application-default =
            pythoneda-realm-rydnr-application-python311;
          pythoneda-realm-rydnr-application-python38 = shared.devShell-for {
            package = packages.pythoneda-realm-rydnr-application-python38;
            python = pkgs.python38;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-realm-rydnr-application-python39 = shared.devShell-for {
            package = packages.pythoneda-realm-rydnr-application-python39;
            python = pkgs.python39;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-realm-rydnr-application-python310 = shared.devShell-for {
            package = packages.pythoneda-realm-rydnr-application-python310;
            python = pkgs.python310;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-realm-rydnr-application-python311 = shared.devShell-for {
            package = packages.pythoneda-realm-rydnr-application-python311;
            python = pkgs.python311;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
        };
        packages = rec {
          default = pythoneda-realm-rydnr-application-default;
          pythoneda-realm-rydnr-application-default =
            pythoneda-realm-rydnr-application-python311;
          pythoneda-realm-rydnr-application-python38 =
            pythoneda-realm-rydnr-application-for {
              python = pkgs.python38;
              pythoneda-realm-rydnr-events =
                pythoneda-realm-rydnr-events.packages.${system}.pythoneda-realm-rydnr-events-python38;
              pythoneda-realm-rydnr-events-infrastructure =
                pythoneda-realm-rydnr-events-infrastructure.packages.${system}.pythoneda-realm-rydnr-events-infrastructure-python38;
              pythoneda-realm-rydnr-infrastructure =
                pythoneda-realm-rydnr-infrastructure.packages.${system}.pythoneda-realm-rydnr-infrastructure-python38;
              pythoneda-realm-rydnr-realm =
                pythoneda-realm-rydnr-realm.packages.${system}.pythoneda-realm-rydnr-realm-python38;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python38;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python38;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python38;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python38;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python38;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python38;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python38;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python38;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python38;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python38;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python38;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python38;
            };
          pythoneda-realm-rydnr-application-python39 =
            pythoneda-realm-rydnr-application-for {
              python = pkgs.python39;
              pythoneda-realm-rydnr-events =
                pythoneda-realm-rydnr-events.packages.${system}.pythoneda-realm-rydnr-events-python39;
              pythoneda-realm-rydnr-events-infrastructure =
                pythoneda-realm-rydnr-events-infrastructure.packages.${system}.pythoneda-realm-rydnr-events-infrastructure-python39;
              pythoneda-realm-rydnr-infrastructure =
                pythoneda-realm-rydnr-infrastructure.packages.${system}.pythoneda-realm-rydnr-infrastructure-python39;
              pythoneda-realm-rydnr-realm =
                pythoneda-realm-rydnr-realm.packages.${system}.pythoneda-realm-rydnr-realm-python39;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python39;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python39;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-events-python39;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python39;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python39;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python39;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python39;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python39;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python39;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python39;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python39;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python39;
            };
          pythoneda-realm-rydnr-application-python310 =
            pythoneda-realm-rydnr-application-for {
              python = pkgs.python310;
              pythoneda-realm-rydnr-events =
                pythoneda-realm-rydnr-events.packages.${system}.pythoneda-realm-rydnr-events-python310;
              pythoneda-realm-rydnr-events-infrastructure =
                pythoneda-realm-rydnr-events-infrastructure.packages.${system}.pythoneda-realm-rydnr-events-infrastructure-python310;
              pythoneda-realm-rydnr-infrastructure =
                pythoneda-realm-rydnr-infrastructure.packages.${system}.pythoneda-realm-rydnr-infrastructure-python310;
              pythoneda-realm-rydnr-realm =
                pythoneda-realm-rydnr-realm.packages.${system}.pythoneda-realm-rydnr-realm-python310;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python310;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python310;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python310;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python310;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python310;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python310;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python310;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python310;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python310;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python310;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python310;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python310;
            };
          pythoneda-realm-rydnr-application-python311 =
            pythoneda-realm-rydnr-application-for {
              python = pkgs.python311;
              pythoneda-realm-rydnr-events =
                pythoneda-realm-rydnr-events.packages.${system}.pythoneda-realm-rydnr-events-python311;
              pythoneda-realm-rydnr-events-infrastructure =
                pythoneda-realm-rydnr-events-infrastructure.packages.${system}.pythoneda-realm-rydnr-events-infrastructure-python311;
              pythoneda-realm-rydnr-infrastructure =
                pythoneda-realm-rydnr-infrastructure.packages.${system}.pythoneda-realm-rydnr-infrastructure-python311;
              pythoneda-realm-rydnr-realm =
                pythoneda-realm-rydnr-realm.packages.${system}.pythoneda-realm-rydnr-realm-python311;
              pythoneda-shared-artifact-changes-events =
                pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python311;
              pythoneda-shared-artifact-changes-events-infrastructure =
                pythoneda-shared-artifact-changes-events-infrastructure.packages.${system}.pythoneda-shared-artifact-changes-events-infrastructure-python311;
              pythoneda-shared-artifact-changes-shared =
                pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python311;
              pythoneda-shared-code-requests-events =
                pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python311;
              pythoneda-shared-code-requests-events-infrastructure =
                pythoneda-shared-code-requests-events-infrastructure.packages.${system}.pythoneda-shared-code-requests-events-infrastructure-python311;
              pythoneda-shared-code-requests-jupyterlab =
                pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python311;
              pythoneda-shared-code-requests-shared =
                pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python311;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python311;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python311;
              pythoneda-shared-pythoneda-application =
                pythoneda-shared-pythoneda-application.packages.${system}.pythoneda-shared-pythoneda-application-python311;
              pythoneda-shared-pythoneda-banner =
                pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
              pythoneda-shared-pythoneda-domain =
                pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
              pythoneda-shared-pythoneda-infrastructure =
                pythoneda-shared-pythoneda-infrastructure.packages.${system}.pythoneda-shared-pythoneda-infrastructure-python311;
              stringtemplate3 =
                stringtemplate3.packages.${system}.stringtemplate3-python311;
            };
        };
      });
}
