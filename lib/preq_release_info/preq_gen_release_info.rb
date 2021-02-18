# class used to represent GENERAL_RELEASE_INFO. Used internally
class PreqGenReleaseInfo
    # @return [String] Item number of purchase requisition
    attr_accessor :preq_item
    # @return [String] Purchase Requisition Number
    attr_accessor :preq_no
    # @return [String] Release code
    attr_accessor :rel_code
    # @return [String] Description of release code
    attr_accessor :rel_cod_tx
    # @return [String] Release group
    attr_accessor :rel_group
    # @return [String] Description of release group
    attr_accessor :rel_grp_tx
    # @return [String] Release indicator
    attr_accessor :rel_ind
    # @return [String] Description of Release Indicator
    attr_accessor :rel_ind_tx
    # @return [String] Release Strategy
    attr_accessor :rel_strat
    # @return [String] Description of release strategy
    attr_accessor :rel_str_tx
end
