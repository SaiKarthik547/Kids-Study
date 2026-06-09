# ANTIGRAVITY EDUCATION SYSTEM
## Document 2: Complete System Architecture + Database Schema + Adaptive Learning Algorithms

---

> **NOTICE:** This document defines the structural backbone of the entire Antigravity system.
> Every architectural decision here is justified by the learning science in Document 1.
> No feature exists for aesthetic or investor-appeal reasons. Every system serves learning.

---

## PART A: SYSTEM ARCHITECTURE

---

### A1. ARCHITECTURAL PHILOSOPHY

Antigravity is NOT a quiz app with a game skin. It is NOT a video platform with badges. It is a genuine adaptive learning system where the game world, narrative, and mechanics ARE the educational experience.

The architecture must support:
1. **Curriculum fidelity** — every concept maps to CBSE or AP board syllabus
2. **Conceptual depth** — system tracks understanding, not answers
3. **Adaptive precision** — difficulty matches each child's current knowledge frontier
4. **Spaced repetition** — concepts resurface at scientifically optimal intervals
5. **Misconception detection** — system identifies wrong mental models, not just wrong answers
6. **Parent transparency** — genuine insight into conceptual mastery, not just time-spent metrics
7. **Anti-addiction design** — system actively discourages over-use
8. **Offline-first** — works on low-connectivity devices in rural AP

---

### A2. HIGH-LEVEL SYSTEM ARCHITECTURE

```
┌─────────────────────────────────────────────────────────────────────┐
│                         ANTIGRAVITY PLATFORM                         │
├─────────────────────────────────────────────────────────────────────┤
│                                                                       │
│  ┌─────────────────┐    ┌──────────────────────────────────────┐    │
│  │   MOBILE APP     │    │           BACKEND SERVICES            │    │
│  │  (Flutter)       │    │                                       │    │
│  │                  │    │  ┌──────────┐  ┌──────────────────┐  │    │
│  │  ┌────────────┐  │    │  │  Auth     │  │  Adaptive Engine │  │    │
│  │  │ Game World  │◄─┼───┼─►│  Service  │  │  (Knowledge      │  │    │
│  │  │ (Unity)     │  │    │  │           │  │   Graph + SRS)   │  │    │
│  │  └────────────┘  │    │  └──────────┘  └──────────────────┘  │    │
│  │  ┌────────────┐  │    │  ┌──────────┐  ┌──────────────────┐  │    │
│  │  │ Adaptive   │◄─┼───┼─►│  Content  │  │  Analytics       │  │    │
│  │  │ Engine     │  │    │  │  Service  │  │  Service         │  │    │
│  │  │ (Local)    │  │    │  └──────────┘  └──────────────────┘  │    │
│  │  └────────────┘  │    │  ┌──────────┐  ┌──────────────────┐  │    │
│  │  ┌────────────┐  │    │  │  Question │  │  Parent          │  │    │
│  │  │ Offline    │  │    │  │  Gen Svc  │  │  Dashboard Svc   │  │    │
│  │  │ Cache      │  │    │  └──────────┘  └──────────────────┘  │    │
│  │  └────────────┘  │    │  ┌──────────────────────────────────┐  │    │
│  └─────────────────┘    │  │    Knowledge Graph Database       │  │    │
│                           │  │    (PostgreSQL + Graph Layer)    │  │    │
│  ┌─────────────────┐    │  └──────────────────────────────────┘  │    │
│  │  PARENT APP      │    │  ┌──────────────────────────────────┐  │    │
│  │  (Flutter)       │◄───┼─►│    Student Model Database         │  │    │
│  └─────────────────┘    │  │    (Per-student knowledge state)  │  │    │
│                           │  └──────────────────────────────────┘  │    │
│  ┌─────────────────┐    │  ┌──────────────────────────────────┐  │    │
│  │  WEB DASHBOARD   │    │  │    Content Database               │  │    │
│  │  (Teacher/Admin) │◄───┼─►│    (Questions, Stories, Assets)  │  │    │
│  └─────────────────┘    │  └──────────────────────────────────┘  │    │
│                           └──────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────────────┘
```

---

### A3. CORE SERVICES DESCRIPTION

**1. Adaptive Engine Service**
The most critical component. Maintains a per-student knowledge graph state, runs the spaced repetition scheduler, detects misconceptions from response patterns, and determines the next optimal learning challenge for each student.

Inputs: Response data, timing data, hint usage, confidence ratings
Outputs: Next concept to present, difficulty level, narrative context, character response

**2. Question Generation Service**
Generates near-infinite question variations using template-based procedural content generation combined with AI-assisted novel scenario creation. Questions are tagged by Bloom's taxonomy level, misconception type, and concept node.

**3. Content Service**
Manages the story library, character dialogue, world assets, audio files, and animation triggers. All content is board-mapped (CBSE or AP state board), class-level tagged, and concept-tagged.

**4. Analytics Service**
Tracks genuine learning metrics (not just engagement). Reports to parent dashboard with concept-level mastery, confidence scores, misconception history, and velocity of improvement.

**5. Parent Dashboard Service**
Provides parent-facing reports. Strictly no comparison to other students. Only personal progress, strengths, gaps, and suggested activities.

---

### A4. TECHNOLOGY STACK

| Layer | Technology | Rationale |
|---|---|---|
| Mobile App | Flutter (iOS + Android) | Single codebase, excellent performance on low-end Android devices |
| Game Engine | Unity (embedded in Flutter) | Proven for 2D educational games, good mobile performance |
| Backend | Node.js (TypeScript) with microservices | Scalable, well-supported, type-safe |
| Primary Database | PostgreSQL | Relational integrity for curriculum/content data |
| Knowledge Graph | PostgreSQL with graph extension OR Neo4j | Concept dependency mapping |
| Student Model | PostgreSQL (per-student tables) | Complex queries on mastery states |
| Cache / Real-time | Redis | Session state, spaced repetition queues |
| Object Storage | AWS S3 / Cloudflare R2 | Audio, images, animation assets |
| CDN | Cloudflare | Asset delivery to low-connectivity regions in AP |
| AI/ML | Python microservice (FastAPI) | Adaptive difficulty model, misconception detection |
| Search | Elasticsearch | Content discovery, concept search |

---

## PART B: DATABASE SCHEMA

---

### B1. KNOWLEDGE GRAPH SCHEMA

This is the curriculum backbone. Every concept from Class 1 to Class 10, for both boards, mapped with prerequisite dependencies.

```sql
-- BOARDS
CREATE TABLE boards (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code VARCHAR(20) NOT NULL UNIQUE,  -- 'CBSE', 'AP_STATE'
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- CLASSES (Grade levels)
CREATE TABLE classes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    board_id UUID REFERENCES boards(id),
    grade_number INTEGER NOT NULL CHECK (grade_number BETWEEN 1 AND 10),
    display_name VARCHAR(50) NOT NULL,  -- 'Class 6', 'Class 6 AP'
    UNIQUE(board_id, grade_number)
);

-- SUBJECTS
CREATE TABLE subjects (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code VARCHAR(20) NOT NULL,  -- 'MATH', 'SCIENCE', 'PHYSICS', 'CHEMISTRY'
    name VARCHAR(100) NOT NULL,
    world_theme VARCHAR(100),  -- The game world this subject maps to
    primary_character_id UUID,  -- The mascot for this subject
    color_theme VARCHAR(7),     -- Hex color for UI
    UNIQUE(code)
);

-- CHAPTERS
CREATE TABLE chapters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    class_id UUID REFERENCES classes(id),
    subject_id UUID REFERENCES subjects(id),
    chapter_number INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    board_chapter_title VARCHAR(200),  -- Official board name
    story_arc_title VARCHAR(200),      -- In-game narrative title
    estimated_mastery_sessions INTEGER DEFAULT 8,
    prerequisite_chapter_ids UUID[],   -- Chapters that should be done first
    created_at TIMESTAMP DEFAULT NOW()
);

-- CONCEPT NODES (The atomic learning units)
CREATE TABLE concepts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    chapter_id UUID REFERENCES chapters(id),
    concept_code VARCHAR(50) NOT NULL UNIQUE,  -- e.g., 'MATH_6_FRACTIONS_COMPARE'
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    bloom_target_level INTEGER CHECK (bloom_target_level BETWEEN 1 AND 6),
    is_gateway_concept BOOLEAN DEFAULT FALSE,  -- Must master before chapter advances
    estimated_mastery_attempts INTEGER DEFAULT 5,
    created_at TIMESTAMP DEFAULT NOW()
);

-- CONCEPT PREREQUISITES (Graph edges)
CREATE TABLE concept_prerequisites (
    concept_id UUID REFERENCES concepts(id),
    prerequisite_id UUID REFERENCES concepts(id),
    dependency_strength VARCHAR(20) DEFAULT 'REQUIRED',  -- 'REQUIRED', 'RECOMMENDED', 'ENRICHMENT'
    PRIMARY KEY (concept_id, prerequisite_id)
);

-- MISCONCEPTIONS (Known wrong mental models per concept)
CREATE TABLE misconceptions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    concept_id UUID REFERENCES concepts(id),
    misconception_code VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,  -- What the child believes incorrectly
    detection_pattern TEXT NOT NULL,  -- How to detect this in responses
    confrontation_story_id UUID,  -- The mini-story that confronts this misconception
    prevalence_rank INTEGER DEFAULT 1  -- 1 = most common
);
```

---

### B2. STUDENT MODEL SCHEMA

This is the live state of each student's knowledge. The most important tables in the system.

```sql
-- STUDENTS
CREATE TABLE students (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    parent_id UUID REFERENCES parents(id),
    display_name VARCHAR(100) NOT NULL,
    avatar_config JSONB,            -- Character customization
    class_grade INTEGER NOT NULL CHECK (class_grade BETWEEN 1 AND 10),
    board_id UUID REFERENCES boards(id),
    preferred_language VARCHAR(20) DEFAULT 'en',
    accessibility_config JSONB,     -- Dyslexia font, audio preference, etc.
    created_at TIMESTAMP DEFAULT NOW(),
    last_active_at TIMESTAMP
);

-- STUDENT CONCEPT MASTERY (Core tracking table)
CREATE TABLE student_concept_mastery (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_id UUID REFERENCES students(id),
    concept_id UUID REFERENCES concepts(id),
    
    -- Mastery state
    mastery_status VARCHAR(20) DEFAULT 'NOT_STARTED',
    -- Values: NOT_STARTED, INTRODUCED, PRACTICING, NEAR_MASTERY, MASTERED, DECAYING
    
    mastery_score DECIMAL(4,3) DEFAULT 0.0,  -- 0.0 to 1.0
    confidence_score DECIMAL(4,3) DEFAULT 0.0,  -- Student's own confidence
    
    -- Spaced repetition scheduling
    repetition_interval_days INTEGER DEFAULT 1,
    ease_factor DECIMAL(4,3) DEFAULT 2.5,  -- SM2 algorithm parameter
    next_review_at TIMESTAMP,
    last_reviewed_at TIMESTAMP,
    
    -- Attempt history
    total_attempts INTEGER DEFAULT 0,
    correct_attempts INTEGER DEFAULT 0,
    hint_uses INTEGER DEFAULT 0,
    
    -- Misconception tracking
    detected_misconceptions UUID[],  -- List of misconception IDs detected
    misconceptions_resolved UUID[],
    
    -- Bloom's level progress
    highest_bloom_demonstrated INTEGER DEFAULT 0,  -- Highest level successfully demonstrated
    
    UNIQUE(student_id, concept_id),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- STUDENT SESSIONS
CREATE TABLE student_sessions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_id UUID REFERENCES students(id),
    started_at TIMESTAMP DEFAULT NOW(),
    ended_at TIMESTAMP,
    total_duration_seconds INTEGER,
    concepts_practiced UUID[],
    quest_id UUID,
    emotional_engagement_score DECIMAL(3,2),  -- 0-1, derived from interaction patterns
    session_type VARCHAR(30)  -- 'GUIDED_QUEST', 'FREE_EXPLORE', 'SPACED_REVIEW', 'BOSS_BATTLE'
);

-- STUDENT RESPONSES (Every interaction recorded)
CREATE TABLE student_responses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID REFERENCES student_sessions(id),
    student_id UUID REFERENCES students(id),
    question_id UUID REFERENCES questions(id),
    concept_id UUID REFERENCES concepts(id),
    bloom_level INTEGER,
    
    -- Response data
    response_value TEXT,        -- What the student answered
    is_correct BOOLEAN,
    is_partially_correct BOOLEAN,
    correctness_score DECIMAL(4,3),  -- For partial credit
    
    -- Timing
    response_time_seconds INTEGER,   -- Time taken to answer
    hint_used BOOLEAN DEFAULT FALSE,
    hint_level_used INTEGER,         -- Which level of hint (1=minimal, 3=full)
    
    -- Misconception signals
    detected_misconception_id UUID,
    
    -- Confidence
    self_reported_confidence INTEGER,  -- 1-5 after answer
    
    answered_at TIMESTAMP DEFAULT NOW()
);

-- STUDENT EMOTIONAL STATE (For engagement tracking, NOT exploitation)
CREATE TABLE student_engagement_signals (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id UUID REFERENCES student_sessions(id),
    student_id UUID REFERENCES students(id),
    signal_type VARCHAR(50),  -- 'RESPONSE_TIME_SPIKE', 'REPEATED_ERRORS', 'ACCELERATING', 'BORED_SIGNAL'
    signal_strength DECIMAL(3,2),
    recorded_at TIMESTAMP DEFAULT NOW(),
    -- NOTE: This data is ONLY used to adjust difficulty and pacing.
    -- It is NEVER used for marketing, monetization targeting, or external reporting.
    used_only_for_learning_adaptation BOOLEAN DEFAULT TRUE
);
```

---

### B3. CONTENT SCHEMA

```sql
-- QUESTIONS
CREATE TABLE questions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    concept_id UUID REFERENCES concepts(id),
    question_type VARCHAR(30) NOT NULL,
    -- Types: CONSTRUCT_ANSWER, APPLY_CONCEPT, IDENTIFY_MISCONCEPTION, 
    --        EXPLAIN_REASONING, MULTI_STEP_PROBLEM, EXPERIMENT_PREDICT,
    --        ANALOGY_MAP, ORDER_SEQUENCE, DESIGN_CHALLENGE
    -- NOTE: Simple multiple-choice ('RECALL_MCQ') should be used minimally,
    --       only for initial concept introduction. Never as primary question type.
    
    bloom_level INTEGER CHECK (bloom_level BETWEEN 1 AND 6),
    difficulty_tier INTEGER CHECK (difficulty_tier BETWEEN 1 AND 5),
    
    -- Template-based generation support
    is_template BOOLEAN DEFAULT FALSE,
    template_variables JSONB,  -- Variables that can be procedurally substituted
    
    -- Content
    question_text TEXT NOT NULL,
    question_visual_asset_id UUID,  -- Image, diagram, animation reference
    correct_answer TEXT,
    answer_explanation TEXT NOT NULL,  -- Always explain WHY, not just WHAT
    
    -- Multiple hint levels
    hint_level_1 TEXT,   -- Nudge in right direction
    hint_level_2 TEXT,   -- More specific guidance
    hint_level_3 TEXT,   -- Near-complete walkthrough
    
    -- Narrative context
    quest_context TEXT,  -- The in-world story framing for this question
    character_id UUID,   -- Which character presents this question
    
    created_at TIMESTAMP DEFAULT NOW(),
    is_validated BOOLEAN DEFAULT FALSE,  -- Must be reviewed by subject expert
    validated_by UUID                    -- Expert who validated
);

-- QUESTS (Narrative wrappers for learning sequences)
CREATE TABLE quests (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    chapter_id UUID REFERENCES chapters(id),
    quest_number INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    narrative_brief TEXT NOT NULL,  -- The story setup
    world_area VARCHAR(100),        -- Which part of the game world
    
    -- Learning objectives
    primary_concept_ids UUID[],     -- Concepts this quest teaches
    review_concept_ids UUID[],      -- Concepts from previous learning reviewed here
    target_bloom_levels INTEGER[],  -- Which Bloom levels are exercised
    
    -- Boss battle concept
    has_boss_battle BOOLEAN DEFAULT FALSE,
    boss_name VARCHAR(100),
    boss_narrative TEXT,
    
    -- Unlock conditions
    prerequisite_quest_ids UUID[],
    minimum_mastery_scores JSONB,   -- {'concept_id': min_score, ...}
    
    estimated_duration_minutes INTEGER,
    UNIQUE(chapter_id, quest_number)
);

-- CHARACTERS (Educational mascots)
CREATE TABLE characters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    character_name VARCHAR(100) NOT NULL,
    character_type VARCHAR(50),     -- 'NUMBER', 'ELEMENT', 'FORCE', 'MOLECULE', 'GUARDIAN', 'VILLAIN'
    subject_id UUID REFERENCES subjects(id),
    concept_specialization UUID[],  -- Which concepts this character best explains
    
    -- Personality (affects dialogue tone)
    personality_traits TEXT[],      -- ['curious', 'patient', 'encouraging', 'dramatic']
    
    -- Visual
    sprite_asset_id UUID,
    expression_variants JSONB,      -- {'happy', 'thinking', 'celebrating', 'gentle_correction'}
    
    -- Voice
    voice_sample_asset_id UUID,
    supported_languages TEXT[]
);

-- WORLDS (Game areas corresponding to subject domains)
CREATE TABLE worlds (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    world_name VARCHAR(100) NOT NULL,
    subject_id UUID REFERENCES subjects(id),
    class_grade INTEGER,
    visual_theme VARCHAR(100),
    background_music_id UUID,
    unlock_condition JSONB  -- What mastery is needed to enter this world
);
```

---

### B4. PARENT AND ANALYTICS SCHEMA

```sql
-- PARENTS
CREATE TABLE parents (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    preferred_language VARCHAR(20) DEFAULT 'en',
    notification_preferences JSONB,
    created_at TIMESTAMP DEFAULT NOW()
);

-- PARENT NOTIFICATIONS (Only actionable, non-anxiety-inducing)
CREATE TABLE parent_notifications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    parent_id UUID REFERENCES parents(id),
    student_id UUID REFERENCES students(id),
    notification_type VARCHAR(50),
    -- Types: CONCEPT_MASTERED, MISCONCEPTION_DETECTED, STRUGGLING_WITH,
    --        MILESTONE_ACHIEVED, RECOMMENDED_ACTIVITY, SCREEN_TIME_SUMMARY
    -- NEVER: RANKING_UPDATE, FELL_BEHIND, COMPARISON_WITH_PEERS
    content TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT NOW(),
    read_at TIMESTAMP
);

-- WEEKLY LEARNING REPORTS
CREATE TABLE student_learning_reports (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_id UUID REFERENCES students(id),
    report_week_start DATE NOT NULL,
    
    -- Genuine learning metrics
    concepts_mastered INTEGER,
    concepts_introduced INTEGER,
    misconceptions_resolved INTEGER,
    
    -- Engagement (not gamification metrics)
    total_learning_time_minutes INTEGER,
    average_session_length_minutes INTEGER,
    sessions_count INTEGER,
    
    -- Qualitative
    strongest_concept_area TEXT,
    needs_attention_area TEXT,
    recommended_next_focus TEXT,
    
    -- NOTE: No ranking, no comparison to other students, no percentiles
    generated_at TIMESTAMP DEFAULT NOW()
);

-- SCREEN TIME TRACKING (Anti-addiction feature)
CREATE TABLE screen_time_records (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    student_id UUID REFERENCES students(id),
    session_id UUID REFERENCES student_sessions(id),
    date DATE NOT NULL,
    total_minutes INTEGER NOT NULL,
    -- System enforces parent-set daily limits
    daily_limit_minutes INTEGER,
    limit_reached BOOLEAN DEFAULT FALSE,
    break_reminders_shown INTEGER DEFAULT 0
);
```

---

## PART C: ADAPTIVE LEARNING ALGORITHMS

---

### C1. THE STUDENT KNOWLEDGE MODEL

Every student has a Knowledge Graph State — a snapshot of their current mastery across every concept they've encountered, with the following dimensions tracked per concept:

**Mastery Score (0.0 – 1.0)**
Calculated as a weighted average:
- Accuracy on recent attempts (weight: 0.5)
- Accuracy at higher Bloom levels (weight: 0.3)
- Accuracy without hints (weight: 0.2)

**Decay Model**
Based on Ebbinghaus forgetting curve + student-specific retention factor:
```
Predicted_Score(t) = Mastery_Score × e^(-k × t / interval)
```
Where `k` is calibrated per-student based on their historical retention patterns.

**Ease Factor (SM2 Algorithm)**
Initial ease factor: 2.5
After each review:
- Correct with no hint: EF = EF + 0.1
- Correct with hint: EF unchanged
- Incorrect: EF = max(1.3, EF - 0.2)

Next review interval:
- First mastery: 1 day
- Second mastery: 6 days
- Subsequent: interval × EF

---

### C2. DYNAMIC DIFFICULTY ADJUSTMENT (DDA)

The DDA system operates on three timescales:

**Micro-adjustment (within session, response-by-response)**
After each response, the system recalibrates the next question:
- 2+ consecutive correct at current difficulty → increase difficulty by 1 tier
- 2+ consecutive incorrect at current difficulty → reduce difficulty by 1 tier
- Response time significantly shorter than average → may indicate question is too easy

The goal is to keep the child's accuracy rate at approximately 70–80%. This is the research-validated "desirable difficulty" zone. 100% accuracy = too easy. Below 60% = too hard.

**Macro-adjustment (across sessions)**
Between sessions, the system reviews the past 3–5 sessions to determine:
- Is the child's mastery trajectory positive, flat, or negative?
- Are they hitting the same misconception repeatedly?
- Are they bored (too fast, too easy)?
- Are they frustrated (giving up, hint-dependent)?

And adjusts the quest selection, character choice, and question types for the next session accordingly.

**Structural adjustment (concept pathway)**
If a student continues to struggle with a concept after 3 different explanatory approaches, the system:
1. Identifies prerequisite concept gaps (using the knowledge graph)
2. Temporarily routes the student through gap-filling quests
3. Returns to the original concept from a stronger foundation

---

### C3. MISCONCEPTION DETECTION ALGORITHM

```
INPUT: Student response to question tagged with concept C
PROCESS:
  1. Pattern-match response against misconception catalog for concept C
  2. If match confidence > 0.8:
     a. Log misconception to student model
     b. Check: has this misconception appeared 2+ times?
     c. If yes: trigger misconception confrontation story
     d. If no: log and monitor
  3. If no match and response is incorrect:
     a. Log as general error
     b. Present conceptual explanation
     c. Schedule near-term review
OUTPUT: Updated misconception state, next content selection
```

Each subject domain has a curated misconception catalog:

**Mathematics examples:**
- "Multiplication always makes numbers bigger" (fails for fractions/decimals)
- "Division always makes numbers smaller"
- "You can't subtract a larger number from a smaller one" (fails for negative numbers)
- "The equals sign means 'the answer comes next'" (procedural vs relational understanding)

**Physics examples:**
- "Heavier objects fall faster than lighter ones"
- "A force is needed to keep something moving"
- "Electricity gets 'used up' by the bulb"
- "Current and voltage are the same thing"
- "Heat and temperature are the same thing"

**Chemistry examples:**
- "Atoms are the smallest possible particles"
- "Chemical reactions create or destroy matter"
- "Acids are always dangerous liquids"
- "Rusting and burning are very different processes" (both are oxidation)
- "Molecules and compounds are the same"

---

### C4. THE QUESTION GENERATION ENGINE

Questions in Antigravity are generated through a three-tier system:

**Tier 1: Template Substitution (fast, reliable)**
Pre-authored question templates with variable slots:
```
Template: "If {object} is traveling at {speed} km/h and decelerates at {rate} m/s², 
           how long does it take to stop?"

Variables: 
  object = [car, train, bicycle, rocket, marble]
  speed = [60, 90, 120, 45, 150]
  rate = [5, 8, 3, 10, 6]

Generates ~75 unique questions from a single template.
```

**Tier 2: Context Remix (medium complexity)**
The same conceptual challenge placed in different narrative contexts:
```
Core concept: "Conservation of energy in a pendulum"

Context A: In the Gravity World, a wizard's staff swings. At the highest point it has maximum potential energy. At the lowest point...
Context B: In the Chemistry World, an atom-shaped pendulum demonstrates electron orbital energy...
Context C: A real-world framing: You've just pushed a playground swing...
```

**Tier 3: AI-Assisted Novel Generation**
For higher Bloom level questions (4–6), the system prompts an AI model with:
- The concept being tested
- The Bloom level required
- The student's current knowledge state
- Any recently surfaced misconceptions
And generates novel challenge scenarios that couldn't be pre-templated.

**Quality Control:**
- All Tier 1 and Tier 2 questions are human-validated by subject matter experts before deployment
- Tier 3 questions are flagged for async expert review
- Any question that receives "this makes no sense" feedback from 3+ students is automatically retired

---

### C5. THE SPACED REPETITION SCHEDULER

Each concept in a student's model has a scheduled review timestamp. The scheduler operates as follows:

**Session Planning:**
At the start of each session, the system constructs a session plan:
1. Pull all concepts with `next_review_at <= NOW() + 24h` (due for review)
2. Pull current quest concepts (new learning)
3. Pull 1-2 cross-chapter interleaving concepts
4. Distribute: ~40% new learning, ~40% spaced review, ~20% interleaving

**Review Presentation:**
Spaced reviews are NOT presented as "time to review X." They are woven into the quest narrative:
```
Example: A child mastered "forces and motion" 2 weeks ago. Today, in a chemistry quest, 
their character needs to calculate how fast an acid-propelled vehicle moves. 
The physics concept surfaces naturally in a new context.
```

---

*End of Document 2*
*Next: Document 3 — Gamification Framework + Character Ecosystem + Reward Economy*
