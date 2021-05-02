local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    --use 'Yggdroot/indentLine'
   
    use 'ryanoasis/vim-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'kyazdani42/nvim-web-devicons'
    use {'neoclide/coc.nvim' , branch = 'release'}
    use 'jiangmiao/auto-pairs'

end)
