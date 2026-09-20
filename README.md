# Modules Fixture — application repository

The production configuration lives in `envs/production/`; the Terraform modules it calls live in `modules/`, outside
that folder on purpose. Documentation is under `docs/`.

This file sits at the repository root so that the corpus's documentation mapping — which selects `docs` — provably
narrows: a whole-repository selection would pick this README up, and the narrowed one must not.
