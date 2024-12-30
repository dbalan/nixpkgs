{
  lib,
  stdenv,
  fetchgit,
  ...
}:
stdenv.mkDerivation {
  pname = "dvnixload";
  version = "0.2.6";

  src = fetchgit {
    url = "https://gitea.sysmocom.de/sysmo-bts/dvnixload.git";
    rev = "095c1cb55757c1f542370e5ba33de663c5d68ba4";
    sha256 = "sha256-MsEaHQ0goQU/s82jJE8AEox3nv94/hMT+P/+h8O/dS0=";
  };

  meta = with lib; {
    description = "Application to program UBL and U-Boot on TI DaVinci boards.";
    longDescription = ''
      Utility to program a UBL (first stage bootloader) and an application
      (2nd stage bootloader, ex. U-Boot) in NAND flash memory over the serial port.
    '';
    homepage = "https://gitea.sysmocom.de/sysmo-bts/dvnixload";
    license = licenses.gpl2;
    maintainers = with maintainers; [dbalan];
    platforms = platforms.all;
  };
}
