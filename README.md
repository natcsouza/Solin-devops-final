<img width="2816" height="1536" alt="Gemini_Generated_Image_nq68rvnq68rvnq68" src="https://github.com/user-attachments/assets/a294b390-09a7-412a-87d8-b24b418ce00f" />

# SOLIN DEVOPS — Monitoramento Preventivo de Saúde Pet

FIAP — DevOps Tools & Cloud Computing — 2TDSR — 2026

---

## Integrantes

- Natalia Cristina de Souza - RM: 564099
- Nickolas Davi Silva Souza - RM: 564105
- Samara de Oliveira Vilela - RM: 566133
- Rodrigo Carvalho Silva - RM: 565162
- Otávio Ferreira Barreto Santos - RM: 565960

---

## Containers Docker

Container Aplicação:
#SOLIN API

Descrição Projeto
Benefícios Negócio
Desenho Arquitetura Macro Azure → infraestrutura DevOps
Fluxo da solução
Infraestrutura Implantada
Tecnologias Utilizadas
Script Azure CLI
Rotas API
HOW TO
Evidências
CRUD
Vídeo
Exclusão da Máquina Virtual
Equipe

---

## Descrição do Projeto

SOLIN é uma solução tecnológica desenvolvida utilizando Java Spring Boot, Docker e Microsoft Azure para monitoramento preventivo da rotina pet.
A solução disponibiliza APIs REST para gerenciamento de informações e utiliza banco H2 containerizado para persistência de dados.
O projeto foi implantado integralmente em nuvem utilizando Máquina Virtual Linux na Azure, Docker Compose e containers independentes para aplicação e banco de dados.

---

# Benefícios para o Negócio

• Centralização das informações
• Persistência segura dos dados
• Infraestrutura reproduzível
• Padronização de implantação
• API REST para integração entre serviços
• Escalabilidade em ambiente de nuvem
• Redução de dependência de ambiente local
• Containerização para simplificar distribuição

---

## Desenho Arquitetura Macro Azure → infraestrutura DevOps

<img width="1536" height="1024" alt="Arquitetura Macro" src="https://github.com/user-attachments/assets/568c64b4-9ae9-4be1-ae26-9f955594848d" />

---

## Fluxo da solução:

Usuário Externo
↓
IP Público Azure
↓
Azure Network Security Group
↓
VM Linux AlmaLinux 10.1
↓
Docker Engine
↓
Docker Compose
↓
SOLIN API (Spring Boot REST API)
↓
Banco H2 Containerizado
↓
Docker Volume Persistente

---

## Infraestrutura Implantada

# Azure

Resource Group:
• vm-linux-free-group
• Máquina Virtual:
• AlmaLinux 10.1
• Portas liberadas:

NSG:
• 22 SSH
• 8080 REST API
• 8082 H2 Console
• 9092 H2 TCP

---

## Tecnologias Utilizadas

• Java 17
• Spring Boot
• Docker
• Docker Compose
• Microsoft Azure
• Banco H2
• Swagger OpenAPI
• GitHub
• Azure CLI
• AlmaLinux 10.1

---

## Script Azure CLI

<img width="1685" height="1001" alt="script Azure CLI" src="https://github.com/user-attachments/assets/823f2d9f-7192-446d-a6f6-dc6998f34ee7" />

---

## Rotas da API

Swagger:

http://20.151.108.209:8080/solin/swagger-ui/index.html

Principais rotas:

GET
/solin/api/pets

POST
/solin/api/pets

PUT
/solin/api/pets/{id}

DELETE
/solin/api/pets/{id}

GET
/solin/api/tutores

POST
/solin/api/tutores

OBS:
A documentação completa pode ser consultada pelo Swagger OpenAPI.

---

## HOW TO — Instalação da Solução

# Clonar projeto

```bash
git clone https://github.com/natcsouza/Solin-devops-final.git
```

# Entrar diretório

```bash
cd Solin-devops-final
```

# Banco Containerizado

```bash
docker compose up -d
```

```bash
sudo docker ps
```

```bash
Imagem Docker utilizada:
oscarfonts/h2
```

<img width="976" height="1005" alt="sudo docker ps" src="https://github.com/user-attachments/assets/f067b796-bc20-41bd-9152-c27c03938b95" />

---

# Persistência Banco H2

Comando:

```bash
find /opt/h2-data -type f
```

Resultado esperado:

```text
solin.mv.db

solin.lock.db
```

<img width="1514" height="998" alt="persistencia h2" src="https://github.com/user-attachments/assets/06bfdc95-035f-4985-b0c8-51657f04f450" />

---

## Evidências Obrigatórias

# Azure VM

<img width="1917" height="1004" alt="vm-linux-free" src="https://github.com/user-attachments/assets/ebad27e7-9421-4fc5-b3dd-d55ff2137bed" />

---

# Azure Network Security Group

<img width="1920" height="1007" alt="nsg" src="https://github.com/user-attachments/assets/bd1ca1c9-9947-40d9-b6de-357ccab52c9b" />

---

# Dockerfile

<img width="1441" height="878" alt="Dockerfile" src="https://github.com/user-attachments/assets/6630f39e-3627-4201-8a3e-48ef62fab49b" />

O script realiza:

• Provisionamento VM Linux Azure
• Abertura de portas
• Instalação Docker
• Instalação Git
• Instalação Nano
• Preparação ambiente execução

---

# Usuário Sem Privilégio Administrativo

Comando:

```bash
docker exec -it solin-api whoami
```

Resultado esperado:

```text
solinuser
```

Comando:

```bash
docker exec -it solin-api id
```

Resultado esperado:

```text
uid=1001(solinuser)
```

<img width="1448" height="491" alt="usuário sem privilégio administrativo" src="https://github.com/user-attachments/assets/03b58f3e-7c51-45c0-9582-9d21f0feca39" />

---

# Docker Compose

<img width="1920" height="1001" alt="docker compose - sudo h2 - oscarfontsh2" src="https://github.com/user-attachments/assets/18758692-f84e-4d84-8fd8-158fbd0c9523" />

<img width="982" height="61" alt="docker compose 2" src="https://github.com/user-attachments/assets/f31b941e-cbf4-428f-bee7-5993a0d6187c" />

---

## CRUD Externo

<img width="1919" height="1001" alt="Swagger aberto" src="https://github.com/user-attachments/assets/e89622ce-51dd-4d8b-8d36-7b5c891d7edd" />

# CREATE (POST)

<img width="1558" height="1000" alt="post tutor" src="https://github.com/user-attachments/assets/f3b0eb46-3437-4994-ba87-1af0616f41f7" />
<img width="1408" height="1001" alt="post pets" src="https://github.com/user-attachments/assets/5925c214-c0eb-4de8-8e7f-7b0950a46067" />

---

# READ (GET)

<img width="1380" height="998" alt="get list pets" src="https://github.com/user-attachments/assets/f4c04b9a-9a25-4fd8-b96d-166879933454" />
<img width="1075" height="760" alt="get id pets" src="https://github.com/user-attachments/assets/0a879552-360f-497e-84f5-b7a3c15c5caa" />

---

# UPDATE (PUT)

<img width="1379" height="1000" alt="put pets" src="https://github.com/user-attachments/assets/c40efbf9-db26-4a25-9561-bb7467e8a770" />

---

# DELETE (DELETE)

<img width="1378" height="823" alt="delete pets" src="https://github.com/user-attachments/assets/c85ce401-0cd0-4ecd-a27e-ffbf231fec38" />

---

# READ (GET)

<img width="1383" height="998" alt="get id pets após delete" src="https://github.com/user-attachments/assets/11269ec5-d37f-4934-bd91-e271d9030ed3" />

---

## Vídeo Demonstração

Link:
https://youtu.be/dy0WZUA8otQ?si=r15_n3lYRAtZ2HPA


O vídeo demonstra:

• Azure CLI
• Docker Compose
• Containers ativos
• Usuário não administrativo
• Banco H2
• Persistência
• CRUD
• API executando externamente na Azure

---

## Exclusão da Maquina Virtual
<img width="1920" height="988" alt="exclusão vm e grupo de recursos" src="https://github.com/user-attachments/assets/494ff067-8c5b-4df3-b6ca-215274a0cc18" />

---

## Equipe

Turma:
2TDSR
FIAP — 2026
