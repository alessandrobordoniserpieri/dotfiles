# Tools & Projects da installare

Riferimenti a tool utili che potrebbero tornare comodi in futuro.

---

## Project N.O.M.A.D.

**Repo:** https://github.com/Crosstalk-Solutions/project-nomad
**Sito:** https://www.projectnomad.us

Server offline-first basato su Docker che aggrega servizi di conoscenza e AI in un'unica UI ("Command Center") accessibile dal browser su porta 8080. Pensato per funzionare senza internet dopo l'installazione iniziale — ideale come server di emergenza, off-grid, o semplicemente come knowledge base locale.

**Include:**
- AI chat locale (Ollama + Qdrant per RAG con upload documenti)
- Wikipedia offline, guide mediche, ebook (Kiwix)
- Corsi Khan Academy con tracking progressi (Kolibri)
- Mappe offline scaricabili per regione (ProtoMaps)
- Encryption, encoding, analisi dati (CyberChef)
- Note locali in markdown (FlatNotes)
- App catalog one-click (PDF tools, file browser, password manager, ecc.)

**Requisiti minimi:** Ubuntu/Debian, 4 GB RAM, 5 GB disco, connessione internet solo per l'installazione.
**Requisiti consigliati per AI:** 32 GB RAM, GPU NVIDIA RTX 3060+, 250 GB SSD.

**Installazione (Ubuntu/Debian):**

```bash
sudo apt-get update && \
sudo apt-get install -y curl && \
curl -fsSL https://raw.githubusercontent.com/Crosstalk-Solutions/project-nomad/refs/heads/main/install/install_nomad.sh \
  -o install_nomad.sh && \
sudo bash install_nomad.sh
```

Poi apri `http://localhost:8080`. Nessuna autenticazione built-in — non esporre direttamente a internet.
