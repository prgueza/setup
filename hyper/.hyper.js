module.exports = {
  config: {

    shell: 'zsh',
    shellArgs: ['--login'],
    env: {},

    updateChannel: 'stable',

    fontSize: 15,
    fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    cursorColor: 'rgba(248,28,229,0.8)',
    cursorAccentColor: '#000',
    cursorShape: 'BLOCK', // 'BEAM' -> |, 'UNDERLINE' -> _, 'BLOCK' -> █
    cursorBlink: false,

    foregroundColor: '#fff',
    backgroundColor: '#000',
    selectionColor: 'rgba(248,28,229,0.3)',
    borderColor: '#333',

    css: '',
    termCSS: '',
    padding: '12px 14px',

    showWindowControls: '',

    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },

    bell: 'SOUND',
    copyOnSelect: false,
    quickEdit: false,
    defaultSSHApp: true,

    clearCommand: 'clear',

    init: [
      { rule: 'all', commands: ['cd ~/Code/', 'clear'] }
    ]
  },

  plugins: ['hyper-chesterish', 'hyper-init', 'hyper-statusline'],
  localPlugins: []

};
