install:
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "if (-not (Get-Command aws -ErrorAction SilentlyContinue)) { make install-aws-cli } else { echo 'AWS CLI is already installed.' }"

install-aws-cli:
    @echo Installing AWS CLI...
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri https://awscli.amazonaws.com/AWSCLIV2.msi -OutFile AWSCLIV2.msi"
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process msiexec.exe -ArgumentList '/i AWSCLIV2.msi /qn /quiet' -Wait"
    @del AWSCLIV2.msi
    @echo AWS CLI installed successfully.
