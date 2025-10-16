import 'models/get_all_domains_response_body.dart';

class MockGetAllDomainsData {
  static final GetAllDomainsResponseBody mockResponse =
      GetAllDomainsResponseBody(
        domains: [
          Domain(
            alias: "Domain1",
            createdAt: "2025-02-12T09:45:58.269568Z",
            createdBy: "6ccaf13c-ef88-4cf2-8e3a-c7c04c5eaf9b",
            id: "9879f314-8b0a-4a11-b157-8523491ffa81",
            name: "Smart Home Main",
            status: "enabled",
            updatedAt: "0001-01-01T00:00:00Z",
          ),
          Domain(
            alias: "myalias",
            createdAt: "2025-02-12T18:36:44.284205Z",
            createdBy: "6ccaf13c-ef88-4cf2-8e3a-c7c04c5eaf9b",
            id: "16a4ad70-a385-45c5-b50a-6d7e48d768d7",
            name: "Office Domain",
            status: "enabled",
            updatedAt: "0001-01-01T00:00:00Z",
          ),
          Domain(
            alias: "home_domain",
            createdAt: "2025-03-10T12:15:30.000000Z",
            createdBy: "b1d2f3c4-a567-8901-b234-cd5678ef9012",
            id: "3456f314-9b0a-4a11-b157-123456789abc",
            name: "Abdelkreim Home",
            status: "disabled",
            updatedAt: "2025-04-01T08:00:00Z",
          ),
          Domain(
            alias: "lab_domain",
            createdAt: "2025-01-25T22:00:00.000000Z",
            createdBy: "cdef5678-9abc-4def-8901-234567890abc",
            id: "7890f314-8b0a-4a11-b157-8523491ff999",
            name: "Biology Lab",
            status: "enabled",
            updatedAt: "2025-02-10T14:20:00Z",
          ),
        ],
        limit: 10,
        offset: 0,
        total: 4,
      );
}
