actions :create

def initialize(*args)
   super
   @action = :create
end

attribute :export_path, :kind_of => [TrueClass, FalseClass], :default => true
attribute :version,     :kind_of => String
attribute :home,        :kind_of => String
attrubute :owner,       :kind_of => String
attribute :rubygems,    :kind_of => String
attribute :exports,     :kind_of => Array
