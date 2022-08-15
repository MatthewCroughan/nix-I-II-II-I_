{
  description = "⣼|⣟";
  outputs = { self }: {
    loss = builtins.derivation {
      name = "trivial";
      system = "x86_64-linux";
      builder = "/bin/sh";
      outputs = ["loss"];
      allowSubstitutes = false;
      preferLocalBuild = true;
      args = ["-c" "echo 'This is what the kids are calling \"loss\": :.|:;' > $loss; exit 0"];
    };
  };
}
