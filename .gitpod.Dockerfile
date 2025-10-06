image:
  file: .gitpod.Dockerfile

tasks:
  - name: Setup Flutter e backend
    init: |
      git config --global user.name "Pako976"
      git config --global user.email "salvatorevitale976@gmail.com"
      echo "Ambiente Gitpod pronto!"
    command: |
      cd frontend
      flutter --version
      cd ../backend
      node --version
      echo "Frontend e backend pronti in cloud!"

ports:
  - port: 8080
    onOpen: open-preview
  - port: 3000
    onOpen: open-preview

vscode:
  extensions:
    - dart-code.flutter
