# [NOM DU CLIENT] — Projet Web/IA

> Fichier de contexte projet pour Claude Code. Mettre à jour à chaque décision importante.

## Informations client

| Champ | Valeur |
|---|---|
| Client | [Nom] |
| Secteur | [Secteur] |
| Contact | [email / tel] |
| Date de début | [JJ/MM/AAAA] |
| Date de livraison | [JJ/MM/AAAA] |

## Brief résumé

[Coller ici le résumé du brief client — 3-5 phrases max]

## Stack technique

| Couche | Technologie | Version |
|---|---|---|
| Framework | Next.js | 16.x |
| Styles | Tailwind CSS | 4.x |
| LLM | Claude Haiku 5.5 (`claude-haiku-5-5`) | API Anthropic |
| Base de données | Supabase | — |
| Déploiement | Vercel | — |
| Tests | Playwright | 1.x |

## Structure du site

```
/              → Page d'accueil
/services      → Services proposés
/about         → À propos
/contact       → Formulaire de contact
/api/chat      → Endpoint chatbot (interne)
```

## Agents assignés

| Agent | Mission | Statut |
|---|---|---|
| chef-de-projet | Orchestration globale | 🟡 En cours |
| ux-designer | Wireframes + specs | ⏳ Pending |
| frontend-builder | Intégration UI | ⏳ Pending |
| chatbot-engineer | Widget + API chat | ⏳ Pending |
| code-reviewer | Revue sécurité/qualité | ⏳ Pending |
| qa-tester | Tests Playwright | ⏳ Pending |
| deployer | Mise en production | ⏳ Pending |

## Variables d'environnement

> Ne jamais committer les valeurs réelles. Utiliser `.env.local` localement.

```bash
ANTHROPIC_API_KEY=              # Clé API Anthropic
NEXT_PUBLIC_SUPABASE_URL=       # URL Supabase
NEXT_PUBLIC_SUPABASE_ANON_KEY=  # Clé publique Supabase
SUPABASE_SERVICE_KEY=           # Clé service Supabase (backend only)
NEXT_PUBLIC_APP_URL=            # URL de production
```

## Décisions techniques

| Date | Décision | Raison |
|---|---|---|
| [date] | [décision] | [raison] |

## Déploiements

| Environnement | URL | Date | Notes |
|---|---|---|---|
| Preview | — | — | — |
| Production | — | — | — |

## Conventions

- Langue du code : français pour commentaires, anglais pour identifiants
- Commits : feat: / fix: / style: / refactor: / docs:
- Branche de prod : main — jamais de push direct, toujours via PR

## Chatbot — Configuration

```
Nom du bot        : [NomBot]
Personnalité      : [description]
Langue            : Français
Domaine couvert   : [ex: questions sur les services, prise de RDV]
Hors-domaine      : [ex: conseils médicaux, prix concurrents]
Contact fallback  : [email ou tel à donner si le bot ne sait pas]
```

## Notes & décisions en cours

<!-- Ajouter ici les notes importantes au fil du projet -->
