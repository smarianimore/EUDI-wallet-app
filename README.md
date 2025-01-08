[![CI](https://github.com/smarianimore/EUDI-wallet-app/actions/workflows/ci.yaml/badge.svg?branch=master)](https://github.com/smarianimore/EUDI-wallet-app/actions/workflows/ci.yaml)

# BiRex

Questo progetto ha come obiettivo quello di produrre un'applicazione sviluppata tramite framework Flutter che permetta agli utilizzatori di ottenere e, in una seconda fase, presentare, delle credenziali verificabili.

Il [protocollo](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0.html) (OpenID for Verifiable Credential Issuance) che descrive il comportamento ed il contratto al quale gli agenti interessati (Issuer, Holder, Verifier) aderiscono.

Altra documentazione è possibile reperirla a questo [link](https://github.com/EWC-consortium/eudi-wallet-rfcs/blob/main/ewc-rfc001-issue-verifiable-credential.md)

## Stack

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

## Ship to

![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)

## Funzionalità dell'applicazione mobile

### 1. Login tramite biometria

Si ottiene l'accesso all'applicazione tramite biometria che garantisce l'identità dell'utilizzatore con quella personale

### 2. Home

Nella home page vengono elencate le credenziali verificabili memorizzate nel wallet.

### 3. Presentazione credenziali

Le credenziali presentate in home posso essere <i>presentate</i> tramite QR Code ad un <b>Verifier</b> che otterrà le credenziali selezionate dell'utente

### 4. Menu

Si presenta un elenco di voci di menu:

- Scopri credenziali
- Impostazioni

### 5. Richiesta credenziali CRIF

Da questa pagina è possibile richiedere delle credenziali verificabili in base alla lista mostrata all'utente.
Suddetta lista è popolata con le informazioni rese disponibili dai servizi CRIF che aderiscono allo standard in esame.

### 6. Impostazioni

Dalla pagina di impostazioni è possibile modificare il <i>look-and-feel</i> dell'applicazione andando ad agire sul tema (chiaro/scuro) o sulla palette di colori utilizzati in app.