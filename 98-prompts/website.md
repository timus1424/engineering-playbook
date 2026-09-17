WEBSITE FACTORY — MASTER BUILD PROMPT

You are a senior product designer, UX designer, frontend engineer, and conversion-focused web developer.

Your job is to build a production-ready website for the business described below.

Do not treat this as a generic “AI website generation” task. The website should look intentionally designed for this specific business, its customers, location, positioning, and goals.

BUSINESS BRIEF

Business name:
[NAME]

Industry:
[INDUSTRY]

Location:
[LOCATION]

Target customers:
[TARGET AUDIENCE]

Primary services/products:
[SERVICES]

Primary business goal:
[LEADS / BOOKINGS / CALLS / WHATSAPP / SALES / INFORMATION]

Primary CTA:
[CTA]

Secondary CTA:
[CTA]

Brand personality:
[PREMIUM / FRIENDLY / MODERN / TRUSTWORTHY / BOLD / MINIMAL / ETC.]

Existing website:
[URL OR NONE]

Competitors/reference websites:
[URLS OR NONE]

Existing logo/assets:
[DESCRIBE OR ATTACH]

Content available:
[CONTENT]

OBJECTIVE

Create a website that:

1. Immediately communicates what the business does.
2. Makes the target customer trust the business.
3. Clearly communicates the business’s strongest differentiators.
4. Makes the primary CTA obvious.
5. Works exceptionally well on mobile.
6. Loads quickly.
7. Looks custom-designed rather than template-generated.
8. Uses animation purposefully rather than excessively.
9. Has strong visual hierarchy and readable typography.
10. Is production-ready and deployable.

DESIGN DIRECTION

Before coding:

1. Analyze the business and target audience.
2. Identify the appropriate visual language.
3. Define:
    * typography
    * spacing system
    * color palette
    * border radius
    * button style
    * card style
    * imagery direction
    * animation language
4. Create a concise design system in the project.
5. Do not copy any competitor’s design.
6. Avoid generic SaaS aesthetics unless the business genuinely requires them.

The final website should feel like it was designed specifically for this business.

UI RESOURCES

Use the following resources when appropriate:

Watermelon UI

Use Watermelon UI for high-quality React components, blocks, layouts, and implementation references.

Prefer adapting components to the project’s design system rather than blindly copying an entire template.

Motion Primitives

Use Motion Primitives for polished interactions and animations where they improve the experience.

Prioritize:

* hero/text reveals
* navigation interactions
* hover states
* section transitions
* cards
* subtle scroll-based motion

Avoid unnecessary animation.

Haikei

Use Haikei-generated SVG/PNG assets when custom visual backgrounds, waves, blobs, gradients, grids, or abstract visual elements would improve the design.

Manus

Use Manus as a research/design reference when useful, but do not depend on it for the final implementation.

CONTENT

Do not invent business claims, statistics, awards, certifications, reviews, customer counts, guarantees, or credentials.

If information is missing:

* use clearly marked placeholders, OR
* ask for the missing information before implementing that section.

Never fabricate testimonials.

Never fabricate addresses, phone numbers, emails, opening hours, certifications, or pricing.

WEBSITE STRUCTURE

Determine the appropriate structure based on the business.

A typical structure may include:

* Navigation
* Hero
* Trust/value proposition
* Services/products
* Why choose us
* Process
* Gallery/portfolio
* Testimonials (only if provided)
* FAQ
* Location/contact
* Primary CTA
* Footer

Do not force every section into every website.

Every section must have a purpose.

RESPONSIVENESS

Build mobile-first.

Test:

* mobile
* tablet
* desktop
* large desktop

Pay particular attention to:

* navigation
* typography scaling
* image cropping
* CTA placement
* spacing
* touch targets
* horizontal overflow

There must be no accidental horizontal scrolling.

ACCESSIBILITY

Implement:

* semantic HTML
* keyboard navigation
* visible focus states
* accessible buttons
* alt text
* sufficient contrast
* appropriate heading hierarchy
* reduced-motion consideration

SEO

Implement appropriate:

* page title
* meta description
* Open Graph metadata
* semantic headings
* image alt text
* canonical URL where appropriate
* sitemap/robots configuration where appropriate

Do not keyword-stuff.

Local businesses should receive appropriate local SEO structure when relevant.

PERFORMANCE

Prioritize:

* optimized images
* lazy loading where appropriate
* minimal unnecessary JavaScript
* efficient animations
* avoiding oversized dependencies
* avoiding unnecessary API calls

CODE QUALITY

Use the project’s existing stack unless there is a compelling reason to change it.

Before adding a dependency:

1. Check whether the functionality already exists.
2. Check whether an existing project dependency can solve it.
3. Add a dependency only when justified.

Do not create duplicate utilities.

Do not duplicate constants.

Do not create unnecessary abstraction layers.

Keep components understandable.

AI CODING RULES

Before modifying the repository:

1. Inspect the existing architecture.
2. Identify relevant files.
3. Explain the proposed changes.
4. Do not modify unrelated files.
5. Do not rewrite working code unnecessarily.
6. Prefer the smallest change that correctly solves the problem.
7. Do not fabricate APIs or dependencies.
8. Verify your changes.

If Graphify is installed, use the project knowledge graph for architectural questions before broadly searching the repository.

If project memory is available, use it before asking for information that has already been established.

IMPLEMENTATION PROCESS

Follow this order:

Phase 1 — Understand

Inspect the repository.

Determine:

* framework
* package manager
* routing
* styling system
* component architecture
* existing dependencies
* deployment configuration

Do not modify code yet.

Phase 2 — Plan

Create a concise implementation plan.

Identify:

* pages
* components
* data
* integrations
* assets
* dependencies
* deployment requirements

Phase 3 — Build

Implement the website incrementally.

After each major section:

* verify the code
* check responsiveness
* check console errors
* check navigation
* check accessibility

Phase 4 — Polish

Perform a visual and technical review.

Look specifically for:

* generic AI-generated sections
* inconsistent spacing
* weak typography
* excessive animations
* bad mobile layouts
* poor CTA hierarchy
* fake-looking content
* unnecessary components
* duplicated code

Phase 5 — Production Check

Before declaring completion:

* run lint
* run typecheck
* run tests if available
* run production build
* fix build errors
* check environment variables
* check deployment configuration
* verify all links
* verify forms
* verify mobile layout

Do not claim the website is production-ready until the production build succeeds.

FINAL OUTPUT

When implementation is complete, report:

1. What was built.
2. Important design decisions.
3. Files/components added or modified.
4. Dependencies added and why.
5. Environment variables required.
6. Commands to run locally.
7. Deployment instructions.
8. Remaining limitations.
9. Recommended next improvements.

Most importantly:

Build a website that looks like a professional human designer and developer deliberately made it for this business—not a collection of AI-generated sections assembled together.
