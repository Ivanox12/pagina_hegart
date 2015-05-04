module ParamsFor
	def params_for(model, *attributes)
		return if method_defined? "#{model}_params"

		define_method "#{model}_params" do
			params.require(model).permit attributes
		end
		private "#{model}_params"
	end
end