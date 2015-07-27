import os

env = Environment()
env['ENV']['TEXINPUTS'] = '.:{}:'.format(os.getcwd())

Export('env')

SConscript(os.path.join('minimal', 'SConscript'),
           variant_dir=os.path.join('build', 'minimal'),
           duplicate=False)

SConscript(os.path.join('exampletalk', 'SConscript'),
           variant_dir=os.path.join('build', 'exampletalk'),
           duplicate=False)
