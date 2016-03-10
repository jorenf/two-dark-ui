describe "Two Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('two-dark-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('two-dark-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('two-dark-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-two-dark-ui-layoutmode')).toBe 'auto'

    atom.config.set('two-dark-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-two-dark-ui-layoutmode')).toBe 'spacious'
