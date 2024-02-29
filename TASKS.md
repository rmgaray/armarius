# Tasks for armarius

* Compiler
  + Parser
    - Storylets
      * Provides (content list)
        * Content declaration
        * Storylet/System reference
      * Uses (storylet)
        * Storylet/archetype/system list
        * Any of (for cases)
      * Implements (list of archetypes) (?) [1]
    - Archetypes
      * Easy, similar to storylets
    - Systems
      * Easy, similar to storylets
    - Content types
      * Fundamental: text, interp_text, enum, number
    - Object types
      * Storylets, archetypes, systems
    - Outputs
      * Case syntax (for matching against an input set)
      * Match syntax (for matching against a specific input)
      * Inherit syntax
      * Input interpolation
      * Expressions
    - General syntax
      * Indented lists:
      * Comma lists
      * Block fragments
      * Line fragments
  + Name resolution
    - Storylet, archetype system granularity (not module level)
  + Type checking
    - TODO. Can we implement this later?
  + Graph extraction
    - Compile type-checked AST to relational model
    - Serialize to database
  + Static content extraction
    - Define resources we want to extract from storylets (raw text, interp text)
    - Implement strategy for content extraction (we should copy some things from Nix)

* Runtime system (POC)
  + Write relational queries for backend used in graph extraction (probably CozoDB)
  + Provide API in some programming language

[^1]: This depends on whether we use nominal or structural records
