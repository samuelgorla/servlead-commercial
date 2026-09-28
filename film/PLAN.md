# Build plan (component plan + assets)

Legend: **HTML** = HTML/CSS/SVG + GSAP · **3D** = Three.js · **AI** = AI B-roll plate (labelled Dramatization) · **TYPE** = typography only

## A. Component plan

| # | Time | Build | Components | Carries out / hand-off |
|---|---|---|---|---|
| 1 | 0.0–1.8 | AI plate + 3D + HTML | Tailgate/plywood plate (AI still, slow code push). **Phone = Three.js actor** lying face-down, with screen glow as a light spill. "Missed call" notification in HTML. Frame 0 fully composed. | Hard cut on the buzz (SFX sync) |
| 2 | 1.8–3.4 | AI plate + 3D | Ladder plate (AI still: owner back to camera, faceless). The same 3D phone sits in the foreground. **The rack focus is code-driven:** plate blur 0→8px while the phone goes 10→0px, so it's deterministic and not left to AI. | Phone screen fills to card |
| 3 | 3.4–5.8 | HTML | Missed-call card at 70% of frame, with generic phone UI (no iOS/Android chrome and no caller name, just "Unknown · Missed call"). The "(2)" card stacks with a spring. | Card exits right |
| 4 | 5.8–7.2 | TYPE | "They call the next guy." Oversized words enter on opposing axes as the card slides out right. | Wipe right (one wipe direction for the sequence) |
| 5 | 7.2–10.0 | AI plate + HTML | Overhead clipboard plate (AI, **blank paper, no text**). HTML estimate lines are laid flat on the paper. **T1:** the sticky note flips Tue→Wed→Thu→Fri as page-curl flips, each faster than the last. | Estimate lifts off (becomes shot 8's actor) |
| 6 | 10.0–11.8 | HTML | Generic mail UI, no brand chrome. The sender is "Customer", with no name. Reply: "Thanks — we already went with someone." | Wipe right |
| 7 | 11.8–13.8 | AI clip | Door-pocket invoice + coffee ring (AI still → 4–5s image-to-video, ~25 cm dolly). Paper stays unreadable; no company names. | Invoice becomes shot 8's actor |
| 8 | 13.8–16.8 | HTML/SVG | **Wall → one actor.** The call card, estimate and invoice (the same elements, at exact pixel coordinates) land on #f2f2f1 paper. Three SVG rust drips (path length is animated on the timeline) merge into one line (**T2**). Super: "None of that's on a report." | The rust line survives |
| 9 | 16.8–20.6 | TYPE | Navy field. Two lines; the rust line becomes the underline of "I help you fix that." **Foreground fly-through:** the line scales through camera over the pre-placed shot 10. | Fly-through |
| 10 | 20.6–23.2 | **TYPE ONLY (LOCK)** | Card: **Sam Gorla · Servlead Solutions · Lehigh Valley, PA · 14 years technology consulting**. No photo or video. It lands, then a 3% push. | Card text lifts; the artifacts return |
| 11 | 23.2–28.8 | HTML/SVG | **Registered decomposition.** The three shot-8 artifacts drop into two labelled rails, "Getting customers" (calls, estimates) and "Getting paid" (invoice). An SVG pen stroke writes "$ ___ / yr" beside each. No figures. | Rails collapse into the plan document |
| 12 | 28.8–31.6 | HTML | **Materializing result.** A "Written plan" shell fills in with blurred ranked lines and a "48 hrs" mark. Chips pop in order: Build · Tool · Hire · Process. | Document shrinks into the offer card |
| 13 | 31.6–35.4 | HTML/SVG | Offer card: AI & Efficiency Audit · 60 minutes · $1,000. A thin SVG clock ring draws a full sweep synced to "Sixty minutes." | The ring becomes the frame of shot 14 |
| 14 | 35.4–42.0 | TYPE | The exact guarantee, revealed **word-synced to Sam's real VO** (timings cut from the WAV), with "$10,000" in gold. A slow 4% push. The line stays on screen fully readable ≥1.5s before the exit. | Cut to the tailgate |
| 15 | 42.0–45.0 | AI plate + 3D + HTML | Shot 1's plate and phone return. **T3:** the 3D phone flips face-up and its screen shows the **real capture of Sam's live booking page** (HTML texture, crisp). Supers: "Got sixty minutes next week?" · cal.com/samgorla/consultation · servleadsolutions.com. Gentle drift. | End |

**Why Three.js appears only for the phone:** the phone is the one physical object that must keep its identity across shots 1, 2 and 15, and it has to physically flip face-down → face-up. A single 3D model gives exact geometry, a deterministic flip, and a pixel-sharp HTML screen. Two separate AI stills would drift. Everything else is flat artifacts and type, which stay crisp in HTML/SVG. *Fallback if the phone composite reads fake in its component Gauntlet:* use an AI face-down/face-up edit pair and corner-pin the HTML screen into the second one.

**Components that get their own lab + critic round before joining the film:** 3D phone on the tailgate plate (1/2/15) · T1 sticky flip (5) · T2 drip merge (8) · decomposition rails + pen (11) · plan materialize (12) · guarantee word-sync (14).

## B. Asset checklist

### Must be generated: AI B-roll, all labelled "Dramatization" (the on-screen tag runs 0–13.8s)
| Asset | Shot | Type | Brief |
|---|---|---|---|
| `plates/tailgate.png` | 1, 15 | AI still (key frame) | Macro, 50mm, low angle on a dusty pickup tailgate with plywood, bright overcast daylight, nothing crushed to black. Empty spot left for the 3D phone; right third kept clear for type. No people, no text, no logos, no watermark. |
| `plates/ladder.png` | 2 | AI still | Wide: a contractor up an aluminum ladder on a house exterior, **back to camera, face not visible**, plain clothes with no logos. Foreground left clear for the phone. No text, no truck markings. |
| `plates/clipboard-overhead.png` | 5 | AI still | Overhead: clipboard with **blank** paper on a truck bench seat, soft daylight. No writing (the HTML supplies the estimate + sticky). |
| `plates/door-pocket.png` → `clips/door-pocket.mp4` | 7 | AI still → image-to-video 4–5s | Macro of a folded invoice in a truck door pocket with a coffee ring on paper, text unreadable, no logos. Steady dolly ~25 cm, preserve geometry, no morphing. Upscale / interpolate to 60fps. |

Needs from you: **no image or video API key is set in this container** (Replicate, ElevenLabs etc.). Either add a key as an environment secret, or generate these 4 yourself from the briefs above and drop them into `assets/plates` / `assets/clips`.

### Built in code (type / UI only, nothing generated)
- Shot 3 missed-call cards, shot 6 mail reply, shot 5 estimate lines + sticky note
- Shot 4, 9, 10, 14 typography (shot 10 is **type only** by lock)
- Shot 8 drips, shot 11 rails + pen, shot 12 plan, shot 13 offer card + ring
- 3D phone model (a procedural rounded body + glass; no brand, no camera bump logos)

### Real assets required (not AI)
- **Sam's VO** (48 kHz WAV, full read). It drives every timing and the shot 14 word sync. No TTS stand-in in the final cut.
- **Capture of the live booking page** at cal.com/samgorla/consultation for shot 15, taken after Zara's check #3 confirms it matches Canonical pricing.
- **Brand tokens:** navy, rust and gold hex values + typeface (placeholders are in `tokens.css`).
- **Music:** licensed, calm/warm (library or ElevenLabs with a key). **SFX:** HyperFrames bundled library (buzz, card taps, one soft whoosh per real transition, pen scratch).

## C. Scaffold + renderer

**Renderer: HyperFrames 0.8.85** (the skill default: the case study and `component-lab.html` are built for it) + GSAP 3 + Three.js, 1920×1080, **60fps master**. It uses the container's Chromium headless shell + static ffmpeg/ffprobe, configured in `env.sh`. `hyperframes doctor` passes, and `hyperframes lint` gives 0 errors / 0 warnings.

```
film/
  index.html              root timeline (45.0s), 15 sub-composition hosts + Dramatization tag (0–13.8s)
  scenes/s01…s15-*.html   one sub-composition per shot, on the locked timings (stubs)
  tokens.css              brand tokens (paper locked; navy/rust/gold/type TBD)
  labs/                   component labs (_template-lab.html, projected-overlays.js)
  assets/plates|clips|ui|fonts|audio/{vo,music,sfx}
  renders/                output (git-ignored)
  BRIEF.md STORYBOARD.md VO.md PLAN.md LEDGER-generation.md LEDGER-gauntlet.md
  env.sh                  source before any hyperframes command
  package.json            npm run lint | snapshot | render:draft | render:master
```

Build order after your yes: code-only scenes first (3, 4, 6, 8–14), since they need no generated assets → component Gauntlet rounds → AI plates + 3D phone → Sam's VO locks the timings → full-film Gauntlet → audio → master.
