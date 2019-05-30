# Project EmojiFinder

This is an example projet to teach myself how to manage an elixir project, from conception to production.

## Context

Our customers needs to find emojis based on key words

## Data source

- https://www.unicode.org/Public/UNIDATA/UnicodeData.txt

## Customer interface

- Terminal
- API HTTP

## Architectural requirements

- Low latency
- High availability

## Development

### Step 1

- [x] Project creation
- [x] Database download

### Step 2

- [ ] Create datatabase access layer
  - [x] Load
  - [x] Sanitize
  - [ ] Query

### Step 3

- [ ] Create internal query API to expose the query interface created on step 2

### Step 4

- [ ] Create CLI interface
- [ ] Create WEB interface

### Step 5

- [ ] Use [distillery](https://github.com/bitwalker/distillery) to put the project into production
- [ ] Configure application to requires at least 3 nodes to start(1 master and 2 slaves)
- [ ] Hot code upgrade can be useful on backend development?
- [ ] Read/talk/share about what I learn and how to improve the development and release process
