module Redmine
  module FieldFormat
    class IssueFormat < RecordList
      self.customized_class_names = %w(Issue)
      add 'issue'
      self.form_partial = 'custom_fields/formats/issue'
      field_attributes :query

      def possible_values_options(custom_field, object=nil)
        possible_values_records(custom_field, object).map {|u| [u.to_s, u.id.to_s]}
      end

      def possible_values_records(custom_field, object=nil)
        query_ids = custom_field.query.is_a?(Array) ? custom_field.query.custom_field.query.map(&:to_s).reject(&:blank?).map(&:to_i) : custom_field.query.to_i
        result = IssueQuery.where(:id => query_ids).collect(&:issues).flatten.uniq
        object.is_a?(Issue) ? (result - [object]) : result
      end
    end
  end
end
