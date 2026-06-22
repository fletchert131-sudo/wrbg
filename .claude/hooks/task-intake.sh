#!/bin/bash
# UserPromptSubmit hook — re-asserts the TASK-INTAKE CONTRACT on EVERY prompt so the
# mandatory skills + robust-prompt/loop scaffolding are never forgotten mid-session.
# Deterministic infrastructure, invisible to the model. Full routing table: system/task-intake.md.
# CANONICAL: copy verbatim into each repo's .claude/hooks/ and wire via .claude/settings.json.
cat <<'INTAKE'
=== TASK-INTAKE CONTRACT (auto, every prompt — act on it for any non-trivial task) ===
1) CLASSIFY: design/UI · code-build · graphics · deck · outreach · loop · research · self-improve. (Trivial/chat → just answer, ignore the rest.)
2) LOAD the MANDATORY skills for that class and INVOKE them — recalling what a skill says is the failure mode; actually run it. (Full table: brain-dump/system/task-intake.md)
3) GATE before executing:
   • BIG task (≥3 files / new feature / multi-step / any outward-irreversible action) → write the SPEC first: goal · success-check · constraints · plan · skills-to-load.
   • LOOP/automation (cron/heartbeat/goal/runbook/background agent) → write the LOOP CONTRACT first: type · 5 needs · a CHECKABLE stop condition (separate grader / native /goal) · budget+turn+wall-clock caps · maker≠checker. A vague goal is a token trap — no crisp stop = do not launch.
4) VERIFY before "done" — the matching check (tests/lint/real run) must pass; never self-declare done.
Quick map: UI→design-direction+ui-ux-pro-max+interactive-ui(+shadcn/Playwright MCP) · code→coding-excellence+TDD+verification(+code-review/security) · graphics→brand-graphics · deck→deck-builder · outreach→marketing+staged-acquisition-stack · loop→LOOPS.md+GOAL-FRAMEWORK · big-plan→writing-plans/brainstorming · frontier→frontier-uplift.
INTAKE
exit 0
